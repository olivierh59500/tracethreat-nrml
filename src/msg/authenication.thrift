/*
* Copyright 2014 Chatsiri Rattana.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
* http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/

/*  Titles			                                          Authors	         Date
 *- Authentication service
 *- Fast compile source ref: http://stackoverflow.com/questions/9956861/thrift-cpp-sample-code-compile-error 
 */ 

namespace cpp authentication

struct User{ 
	  1: string userName;
	  2: string password; 
}

<<<<<<< HEAD
struct MessageTTMAT{
	1: string subject;
	2: string detail;
	3: string status;
	4: string date;
}

typedef list<MessageTTMAT> messageTTMATList

struct MailboxTTMAT{
	1: User user;
	2: messageTTMATList messageTTMAT;
}



=======
  
>>>>>>> dev_win32
/* For throw and error from member function */
exception InvalidOperation{
	1: i32 what,
	2: string why
}

/* User login to system before get other processes */
service Authentication{

		/* Ping service active or not */
		bool  pingActive(1:i32 genNum), 

		/* Login user check */
		bool  login(1:User user) throws(1:InvalidOperation ouch), 

		/* Logout user check */
<<<<<<< HEAD
		bool  logout(1:User user) throws(1:InvalidOperation ouch),

		/* get data from TT-MAT mailbox */
		MailboxTTMAT getMailboxTTMAT(1:User user, 2:string date) throws(1:InvalidOperation ouch)
=======
		bool  logout(1:User user) throws(1:InvalidOperation ouch)
>>>>>>> dev_win32

}

