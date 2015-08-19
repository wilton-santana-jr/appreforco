package com.yourapp;

 import grails.plugin.springsecurity.annotation.Secured

/*
 If you're using older Grails version like 2.2.x series use the
 following instead:
   import grails.plugin.springsecurity.annotation.Secured
 */
class SensitiveContentController {
  
  @Secured(['ROLE_ADMIN'])
  def index() {
    render "Some sensitive content"
  }
  
}
