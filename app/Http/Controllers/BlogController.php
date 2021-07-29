<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator;
use Auth;
use App\Blog;
use Session;

class BlogController extends Controller
{

  public function index(){
    $blogs = Blog::all();
    return view('welcome',compact('blogs'));
  }

   public function addBlog(){
     return view('create_blog');
   }

   public function storeBlog(Request $request){
    $rules = array(
      'title'=> 'required',
      'description'=> 'required',
      'tags'=> 'required',
      'blog_image'=> 'required|file|max:100',
    );
    $messages = [
      'title.required'=> 'Please Enter Blog Title',
      'description.required'=> 'Please Enter Blog Description',
      'tags.required'=> 'Please Enter Blog Tags in Comma seperated',
      'blog_image.required'=> 'Please Enter Blog Image',
      'blog_image.max'=> 'Blog Image should be 100KB',
    ];

    $validator = Validator::make($request->all(), $rules, $messages);
    if($validator->fails()){
      return redirect()->back()->withErrors($validator)->withInput();
    }else{
      $addBlog = new Blog();
      $addBlog->user_id = Auth::user()->id;
      $addBlog->title = $request->title;
      $addBlog->description = $request->description;
      $addBlog->tags = $request->tags;
      if($request->file('blog_image')){
        $file = $request->file('blog_image');
        $file->getClientOriginalName();
        $fileExtension = $file->getClientOriginalExtension();
        $file->getSize();
        $file->getRealPath();
        $file->getMimeType();
        $filename = $file->getClientOriginalName();
        $path = base_path().'/public/blog/';
        $upload = $request->file('blog_image')->move($path, $filename);
        $addBlog->blog_image = $filename;
      }
      if($addBlog->save()){
        Session::flash('message','Blog Added Successfully.!');
        Session::flash('alert-class','success');
        return redirect()->route('home');
      }else{
        Session::flash('message','Oops !! Something Went Wrong.');
        Session::flash('alert-class','error');
        return redirect()->route('home');
      }
    }
   }

   public function editBlog($id){
     $blog = Blog::findorfail($id);
     if($blog){
       return view('edit_blog',compact('blog'));
     }else{
       abort(404);
     }
   }

   public function updateBlog(Request $request){
     $rules = array(
       'title'=> 'required',
       'description'=> 'required',
       'tags'=> 'required',
       'blog_image'=> 'file|max:100',
     );
     $messages = [
       'title.required'=> 'Please Enter Blog Title',
       'description.required'=> 'Please Enter Blog Description',
       'tags.required'=> 'Please Enter Blog Tags in Comma seperated',
       'blog_image.max'=> 'Blog Image should be 100KB',
     ];

     $validator = Validator::make($request->all(), $rules, $messages);
     if($validator->fails()){
       return redirect()->back()->withErrors($validator)->withInput();
     }else{
       $updateBlog = Blog::find($request->blog_id);
       $updateBlog->user_id = Auth::user()->id;
       $updateBlog->title = $request->title;
       $updateBlog->description = $request->description;
       $updateBlog->tags = $request->tags;
       if($request->file('blog_image')){
         $file = $request->file('blog_image');
         $file->getClientOriginalName();
         $fileExtension = $file->getClientOriginalExtension();
         $file->getSize();
         $file->getRealPath();
         $file->getMimeType();
         $filename = $file->getClientOriginalName();
         $path = base_path().'/public/blog/';
         $upload = $request->file('blog_image')->move($path, $filename);
         $updateBlog->blog_image = $filename;
       }
       if($updateBlog->save()){
         Session::flash('message','Blog Updated Successfully.!');
         Session::flash('alert-class','success');
         return redirect()->route('home');
       }else{
         Session::flash('message','Oops !! Something Went Wrong.');
         Session::flash('alert-class','error');
         return redirect()->route('home');
       }
     }
   }

   public function deleteBlog($id){
     $blog = Blog::findorfail($id);
     if($blog->delete()){
       Session::flash('message','Blog Deleted.');
       Session::flash('alert-class','warning');
       return redirect()->route('home');
     }else{
       abort(404);
     }
   }
}
