<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Blog extends Model
{
    protected $table = 'blogs';
    protected $primaryKey = 'blog_id';

    protected $fillable = [
        'blog_id', 'user_id', 'title', 'description','tags','blog_image'
    ];

    public function getBlogImageAttribute($value){
      if($value !== "" && $value != null){
        return (url('/public/blog/').'/').$value;
      }else{
        return "";
      }
    }
}
