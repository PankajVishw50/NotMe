
# NotMe (An Anonymous Files/Text Sharing)

**NotMe** is an service which offers Anonymous secure URL to share data using one time URL.

## What do we offer
- No logging / Tracking
- Secure File Sharing
- Secure Text Sharing
- Password Protection (password == encryption key, encryption on frontend side)
- Client side Encryption and Decryption

## How it works 

On Frontend of this software first user would select files and write notes/Text which he
would like to upload and share.  
Then either he trusts us and let us handle encryption and decryption
or he provides an encryption key/passphrase using which first we would encrypt data on client side,
and only after encryption uploads to our system.
Backend side encryption would still happen in later case to protect data in data breach even if client's encryption 
key was easy to crack.  

Once Files uploaded we would first encrypt all files in backend and store in db,
and generate unique identifier and create url using that. which would be shared to user.

Now, When someone request's our server with valid url, our system first will verify the resources
then decrypt data on backend and send to user, deleting all data from our db. 

In case if client side encryption was used our Frontend would provide option to decrypt those files
by providing there key. It's totaly optional and you can download encrypted files and decrypt using some other service.
