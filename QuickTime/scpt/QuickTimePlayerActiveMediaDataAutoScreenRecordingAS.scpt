FasdUAS 1.101.10   ??   ??    k             l      ??  ??   ??*******************************************************
 Summary:
	Using the screen recording function of QuickTime Player on MacOS 
	AppleScript to record the screen at a specified time

 SupportVersion:
	macOS Monterey(version 12.4)
	QuickTime Player(version 10.5)

 Usage:
	1.QuickTime Player settings
		Select 'Record Selection' and set the area you want to record and 
		Set the area you want to record and the location where 
		you want to save the file (Options??Destination).
	2.Set the recording time
		Enter the recording time in the dialog that appears after startup.
		ex)3600(seconds) = 60(minutes) = 1(hour)
		Recording time depends on the process and 
		may deviate by a few seconds to a few tens of seconds.
		Set the recording time to a value larger than the desired recording time.
		
 reference:
	1.AppleScript sample code / AppleScript ?̃T???v???R?[?h
	https://dev.classmethod.jp/articles/applescript-sample/
	2.QuickTime Player to head all open movies and play them at the same time / 
	QuickTime Player?ŃI?[?v?????̑S???[?r?[?𓪏o?????ē????Đ?
	http://piyocast.com/as/archives/tag/quicktime-player
*******************************************************     ? 	 	? * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
   S u m m a r y : 
 	 U s i n g   t h e   s c r e e n   r e c o r d i n g   f u n c t i o n   o f   Q u i c k T i m e   P l a y e r   o n   M a c O S   
 	 A p p l e S c r i p t   t o   r e c o r d   t h e   s c r e e n   a t   a   s p e c i f i e d   t i m e 
 
   S u p p o r t V e r s i o n : 
 	 m a c O S   M o n t e r e y ( v e r s i o n   1 2 . 4 ) 
 	 Q u i c k T i m e   P l a y e r ( v e r s i o n   1 0 . 5 ) 
 
   U s a g e : 
 	 1 . Q u i c k T i m e   P l a y e r   s e t t i n g s 
 	 	 S e l e c t   ' R e c o r d   S e l e c t i o n '   a n d   s e t   t h e   a r e a   y o u   w a n t   t o   r e c o r d   a n d   
 	 	 S e t   t h e   a r e a   y o u   w a n t   t o   r e c o r d   a n d   t h e   l o c a t i o n   w h e r e   
 	 	 y o u   w a n t   t o   s a v e   t h e   f i l e   ( O p t i o n s!? D e s t i n a t i o n ) . 
 	 2 . S e t   t h e   r e c o r d i n g   t i m e 
 	 	 E n t e r   t h e   r e c o r d i n g   t i m e   i n   t h e   d i a l o g   t h a t   a p p e a r s   a f t e r   s t a r t u p . 
 	 	 e x ) 3 6 0 0 ( s e c o n d s )   =   6 0 ( m i n u t e s )   =   1 ( h o u r ) 
 	 	 R e c o r d i n g   t i m e   d e p e n d s   o n   t h e   p r o c e s s   a n d   
 	 	 m a y   d e v i a t e   b y   a   f e w   s e c o n d s   t o   a   f e w   t e n s   o f   s e c o n d s . 
 	 	 S e t   t h e   r e c o r d i n g   t i m e   t o   a   v a l u e   l a r g e r   t h a n   t h e   d e s i r e d   r e c o r d i n g   t i m e . 
 	 	 
   r e f e r e n c e : 
 	 1 . A p p l e S c r i p t   s a m p l e   c o d e   /   A p p l e S c r i p t  0n0?0?0?0?0?0?0? 
 	 h t t p s : / / d e v . c l a s s m e t h o d . j p / a r t i c l e s / a p p l e s c r i p t - s a m p l e / 
 	 2 . Q u i c k T i m e   P l a y e r   t o   h e a d   a l l   o p e n   m o v i e s   a n d   p l a y   t h e m   a t   t h e   s a m e   t i m e   /   
 	 Q u i c k T i m e   P l a y e r0g0?0?0?0?N-0nQh0?0?0?0?0??-Q?0W0W0fTfBQ?u 
 	 h t t p : / / p i y o c a s t . c o m / a s / a r c h i v e s / t a g / q u i c k t i m e - p l a y e r 
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *   
  
 l     ????????  ??  ??        l      ??  ??   ??******************************************************* 
 Function Name:
	ask_recording_time():
	Function to display a dialog box to request the input of recording time and return the input value
 Arguments:
	None
 Return value:
	recording_time: recording time
 Description:
	Recorded time is processed only for numerical values.
*******************************************************     ?   * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *   
   F u n c t i o n   N a m e : 
 	 a s k _ r e c o r d i n g _ t i m e ( ) : 
 	 F u n c t i o n   t o   d i s p l a y   a   d i a l o g   b o x   t o   r e q u e s t   t h e   i n p u t   o f   r e c o r d i n g   t i m e   a n d   r e t u r n   t h e   i n p u t   v a l u e 
   A r g u m e n t s : 
 	 N o n e 
   R e t u r n   v a l u e : 
 	 r e c o r d i n g _ t i m e :   r e c o r d i n g   t i m e 
   D e s c r i p t i o n : 
 	 R e c o r d e d   t i m e   i s   p r o c e s s e d   o n l y   f o r   n u m e r i c a l   v a l u e s . 
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *      i         I      ???????? 0 ask_recording_time  ??  ??    k     h       l     ??  ??      Non-numeric repetition     ?   .   N o n - n u m e r i c   r e p e t i t i o n      T     W   k    R        r     ! " ! l    #???? # I   ?? $ %
?? .sysodlogaskr        TEXT $ m     & & ? ' ' H P l e a s e   e n t e r   t h e   r e c o r d i n g   t i m e ( s e c ) % ?? ( )
?? 
dtxt ( m     * * ? + +   ) ?? , -
?? 
disp , m   	 
??
?? stic    - ?? . /
?? 
btns . J     0 0  1 2 1 m     3 3 ? 4 4  C a n c e l 2  5?? 5 m     6 6 ? 7 7  C o n t i n u e??   / ?? 8??
?? 
dflt 8 m     9 9 ? : :  C o n t i n u e??  ??  ??   " o      ???? 0 results      ; < ; r     = > = n     ? @ ? 1    ??
?? 
ttxt @ o    ???? 0 results   > o      ???? 0 input_returned   <  A B A r    # C D C n    ! E F E 1    !??
?? 
bhit F o    ???? 0 results   D o      ???? 0 button_returned   B  G H G l  $ $????????  ??  ??   H  I J I Z   $ : K L???? K =   $ ' M N M o   $ %???? 0 button_returned   N m   % & O O ? P P  C a n c e l L k   * 6 Q Q  R S R l  * / T???? T I  * /?? U??
?? .sysodisAaleR        TEXT U m   * + V V ? W W D P u s h e d   c a n c e l   b u t t o n .   Q u i t   s c r i p t .??  ??  ??   S  X?? X I  0 6?? Y??
?? .aevtquitnull??? ??? null Y J   0 2????  ??  ??  ??  ??   J  Z [ Z l  ; ;????????  ??  ??   [  \ ] \ Q   ; P ^ _?? ^ k   > G ` `  a b a l  > >?? c d??   c * $ If it's a number, it exits the loop    d ? e e H   I f   i t ' s   a   n u m b e r ,   i t   e x i t s   t h e   l o o p b  f g f r   > E h i h c   > C j k j o   > ????? 0 input_returned   k m   ? B??
?? 
nmbr i o      ???? 0 recording_time   g  l?? l  S   F G??   _ R      ??????
?? .ascrerr ****      ? ****??  ??  ??   ]  m?? m l  Q Q????????  ??  ??  ??     n o n I  X e?? p??
?? .ascrcmnt****      ? **** p b   X a q r q b   X ] s t s m   X [ u u ? v v H [ a s k _ r e c o r d i n g _ t i m e ( ) ] R e c o r d i n g   t i m e t o   [ \???? 0 recording_time   r m   ] ` w w ? x x  s e c??   o  y?? y L   f h z z o   f g???? 0 recording_time  ??     { | { l     ????????  ??  ??   |  } ~ } l      ??  ???   ??*******************************************************
 Function Name:
	quicktimeplayer_runnning_check():
	Function to determine if QuickTime Player is running
 Arguments:
	None
 Return value:
	true:QuickTime Player is running
	false:QuickTime Player is not running
 Description:
	Returns true if the QuickTime Player is runnning, false otherwise
*******************************************************    ? ? ? ?& * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
   F u n c t i o n   N a m e : 
 	 q u i c k t i m e p l a y e r _ r u n n n i n g _ c h e c k ( ) : 
 	 F u n c t i o n   t o   d e t e r m i n e   i f   Q u i c k T i m e   P l a y e r   i s   r u n n i n g 
   A r g u m e n t s : 
 	 N o n e 
   R e t u r n   v a l u e : 
 	 t r u e : Q u i c k T i m e   P l a y e r   i s   r u n n i n g 
 	 f a l s e : Q u i c k T i m e   P l a y e r   i s   n o t   r u n n i n g 
   D e s c r i p t i o n : 
 	 R e t u r n s   t r u e   i f   t h e   Q u i c k T i m e   P l a y e r   i s   r u n n n i n g ,   f a l s e   o t h e r w i s e 
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * ~  ? ? ? i     ? ? ? I      ???????? "0 quicktimeplayer_runnning_check  ??  ??   ? k      ? ?  ? ? ? l     ?? ? ???   ? M G Initialize the flag for QuickTime Player execution judgment with false    ? ? ? ? ?   I n i t i a l i z e   t h e   f l a g   f o r   Q u i c k T i m e   P l a y e r   e x e c u t i o n   j u d g m e n t   w i t h   f a l s e ?  ? ? ? r      ? ? ? m     ??
?? boovfals ? o      ???? 0 qtrunningflag qtRunningFlag ?  ? ? ? Z     ? ????? ? =   	 ? ? ? n     ? ? ? 1    ??
?? 
prun ? m     ? ??                                                                                  mgvr  alis    X  Macintosh HD                   BD ????QuickTime Player.app                                           ????            ????  
 cu             Applications  +/:System:Applications:QuickTime Player.app/   *  Q u i c k T i m e   P l a y e r . a p p    M a c i n t o s h   H D  (System/Applications/QuickTime Player.app  / ??   ? m    ??
?? boovtrue ? k     ? ?  ? ? ? l   ?? ? ???   ? ; 5 QuickTime Player execution flag is updated with true    ? ? ? ? j   Q u i c k T i m e   P l a y e r   e x e c u t i o n   f l a g   i s   u p d a t e d   w i t h   t r u e ?  ??? ? r     ? ? ? m    ??
?? boovtrue ? o      ???? 0 qtrunningflag qtRunningFlag??  ??  ??   ?  ? ? ? l   ?? ? ???   ? < 6 Returns flags for QuickTime Player execution judgment    ? ? ? ? l   R e t u r n s   f l a g s   f o r   Q u i c k T i m e   P l a y e r   e x e c u t i o n   j u d g m e n t ?  ??? ? L     ? ? o    ???? 0 qtrunningflag qtRunningFlag??   ?  ? ? ? l     ????????  ??  ??   ?  ? ? ? l      ?? ? ???   ?%*******************************************************
 Function Name:
	quicktimeplayer_play_multiscreens()
	Function to determine if QuickTime Player playback process has been executed
 Arguments :
	None
 Return value:
	true:QuickTime Player playback processing was executed
	false: QuickTime Player playback processing could not be executed
 Description:
	Obtain the number of elements from the document class and 
	if the number of elements is not zero, execute the playback process.
*******************************************************    ? ? ? ?> * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
   F u n c t i o n   N a m e : 
 	 q u i c k t i m e p l a y e r _ p l a y _ m u l t i s c r e e n s ( ) 
 	 F u n c t i o n   t o   d e t e r m i n e   i f   Q u i c k T i m e   P l a y e r   p l a y b a c k   p r o c e s s   h a s   b e e n   e x e c u t e d 
   A r g u m e n t s   : 
 	 N o n e 
   R e t u r n   v a l u e : 
 	 t r u e : Q u i c k T i m e   P l a y e r   p l a y b a c k   p r o c e s s i n g   w a s   e x e c u t e d 
 	 f a l s e :   Q u i c k T i m e   P l a y e r   p l a y b a c k   p r o c e s s i n g   c o u l d   n o t   b e   e x e c u t e d 
   D e s c r i p t i o n : 
 	 O b t a i n   t h e   n u m b e r   o f   e l e m e n t s   f r o m   t h e   d o c u m e n t   c l a s s   a n d   
 	 i f   t h e   n u m b e r   o f   e l e m e n t s   i s   n o t   z e r o ,   e x e c u t e   t h e   p l a y b a c k   p r o c e s s . 
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * ?  ? ? ? i     ? ? ? I      ???????? %0 !quicktimeplayer_play_multiscreens  ??  ??   ? k     b ? ?  ? ? ? O     _ ? ? ? k    ^ ? ?  ? ? ? l   ?? ? ???   ? Y S Initialize QuickTime Player playback processing execution judgment flag with false    ? ? ? ? ?   I n i t i a l i z e   Q u i c k T i m e   P l a y e r   p l a y b a c k   p r o c e s s i n g   e x e c u t i o n   j u d g m e n t   f l a g   w i t h   f a l s e ?  ? ? ? r     ? ? ? m    ??
?? boovfals ? o      ???? (0 qtactivescreenflag qtActiveScreenFlag ?  ? ? ? l   ?? ? ???   ?   Designated as frontmost    ? ? ? ? 0   D e s i g n a t e d   a s   f r o n t m o s t ?  ? ? ? I   ??????
?? .miscactvnull??? ??? null??  ??   ?  ? ? ? l   ?? ? ???   ? T N Refer to all elements by specifying the document class and set them to dList.    ? ? ? ? ?   R e f e r   t o   a l l   e l e m e n t s   b y   s p e c i f y i n g   t h e   d o c u m e n t   c l a s s   a n d   s e t   t h e m   t o   d L i s t . ?  ? ? ? r     ? ? ? 2    ??
?? 
docu ? o      ???? 0 dlist dList ?  ? ? ? l   ?? ? ???   ? H B Number of elements (number of screens to be recorded) acquisition    ? ? ? ? ?   N u m b e r   o f   e l e m e n t s   ( n u m b e r   o f   s c r e e n s   t o   b e   r e c o r d e d )   a c q u i s i t i o n ?  ? ? ? r     ? ? ? I   ?? ???
?? .corecnte****       **** ? o    ???? 0 dlist dList??   ? o      ???? 0 	dlist_num 	dList_num ?  ? ? ? I   #?? ???
?? .ascrcmnt****      ? **** ? b     ? ? ? m     ? ? ? ? ? n [ q u i c k t i m e p l a y e r _ p l a y _ m u l t i s c r e e n s ( ) ] N u m b e r   o f   s c r e e n s : ? o    ???? 0 	dlist_num 	dList_num??   ?  ? ? ? l  $ $?? ? ???   ? G A If the number of elements is not zero, set the playback process.    ? ? ? ? ?   I f   t h e   n u m b e r   o f   e l e m e n t s   i s   n o t   z e r o ,   s e t   t h e   p l a y b a c k   p r o c e s s . ?  ??? ? Z   $ ^ ? ????? ? >  $ ' ? ? ? o   $ %???? 0 	dlist_num 	dList_num ? m   % &????   ? k   * Z ? ?  ? ? ? l  * *?? ? ???   ? R L QuickTime Player playback processing availability flag is updated with true    ? ? ? ? ?   Q u i c k T i m e   P l a y e r   p l a y b a c k   p r o c e s s i n g   a v a i l a b i l i t y   f l a g   i s   u p d a t e d   w i t h   t r u e ?  ? ? ? r   * - ? ? ? m   * +??
?? boovtrue ? o      ???? (0 qtactivescreenflag qtActiveScreenFlag ?  ? ? ? l  . .?? ? ???   ? %  Element count playback process    ? ? ? ? >   E l e m e n t   c o u n t   p l a y b a c k   p r o c e s s ?  ? ? ? X   . M ???  ? O   > H k   B G  l  B B????   $  Enable to play from 0 seconds    ? <   E n a b l e   t o   p l a y   f r o m   0   s e c o n d s 	
	 l  B B????     set current time to 0    ? ,   s e t   c u r r e n t   t i m e   t o   0
  l  B B????     Enable loop    ?    E n a b l e   l o o p ?? r   B G m   B C??
?? boovtrue 1   C F??
?? 
loop??   o   > ????? 0 i  ?? 0 i    o   1 2???? 0 dlist dList ? ?? O  N Z I  T Y??~?}
? .MVWRplaynull???     docu?~  ?}   2   N Q?|
?| 
docu??  ??  ??  ??   ? m     ?                                                                                  mgvr  alis    X  Macintosh HD                   BD ????QuickTime Player.app                                           ????            ????  
 cu             Applications  +/:System:Applications:QuickTime Player.app/   *  Q u i c k T i m e   P l a y e r . a p p    M a c i n t o s h   H D  (System/Applications/QuickTime Player.app  / ??   ?  l  ` `?{?{   O I Returns the QuickTime Player playback processing execution decision flag    ? ?   R e t u r n s   t h e   Q u i c k T i m e   P l a y e r   p l a y b a c k   p r o c e s s i n g   e x e c u t i o n   d e c i s i o n   f l a g ?z L   ` b   o   ` a?y?y (0 qtactivescreenflag qtActiveScreenFlag?z   ? !"! l     ?x?w?v?x  ?w  ?v  " #$# l      ?u%&?u  %uo*******************************************************
 Function name:
	screen_recording(input_time):
	Screen recording processing function
 Arguments:
	input_time: time to record
 Return value:
	None
 Description:
	A shortcut key input from System Events launches the screenshot toolbar and starts recording.
	The elapsed time to be recorded is obtained from the data object using the current date command,
	calculated, and set.
	After the recording time has elapsed, recording is stopped by inputting a shortcut key 
	in the same way as for the start of recording.
*******************************************************   & ?''? * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
   F u n c t i o n   n a m e : 
 	 s c r e e n _ r e c o r d i n g ( i n p u t _ t i m e ) : 
 	 S c r e e n   r e c o r d i n g   p r o c e s s i n g   f u n c t i o n 
   A r g u m e n t s : 
 	 i n p u t _ t i m e :   t i m e   t o   r e c o r d 
   R e t u r n   v a l u e : 
 	 N o n e 
   D e s c r i p t i o n : 
 	 A   s h o r t c u t   k e y   i n p u t   f r o m   S y s t e m   E v e n t s   l a u n c h e s   t h e   s c r e e n s h o t   t o o l b a r   a n d   s t a r t s   r e c o r d i n g . 
 	 T h e   e l a p s e d   t i m e   t o   b e   r e c o r d e d   i s   o b t a i n e d   f r o m   t h e   d a t a   o b j e c t   u s i n g   t h e   c u r r e n t   d a t e   c o m m a n d , 
 	 c a l c u l a t e d ,   a n d   s e t . 
 	 A f t e r   t h e   r e c o r d i n g   t i m e   h a s   e l a p s e d ,   r e c o r d i n g   i s   s t o p p e d   b y   i n p u t t i n g   a   s h o r t c u t   k e y   
 	 i n   t h e   s a m e   w a y   a s   f o r   t h e   s t a r t   o f   r e c o r d i n g . 
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *$ ()( i    *+* I      ?t,?s?t 0 screen_recording  , -?r- o      ?q?q 0 
input_time  ?r  ?s  + k     V.. /0/ O     !121 k     33 454 l   ?p67?p  6 7 1 command+shift+5 activates the screenshot toolbar   7 ?88 b   c o m m a n d + s h i f t + 5   a c t i v a t e s   t h e   s c r e e n s h o t   t o o l b a r5 9:9 I   ?o;<
?o .prcskcodnull???     ****; m    ?n?n < ?m=?l
?m 
faal= J    
>> ?@? m    ?k
?k eMdsKcmd@ A?jA m    ?i
?i eMdsKsft?j  ?l  : BCB l   ?hDE?h  D T N Allow 0.5 seconds to activate the record button (adjust by number of screens)   E ?FF ?   A l l o w   0 . 5   s e c o n d s   t o   a c t i v a t e   t h e   r e c o r d   b u t t o n   ( a d j u s t   b y   n u m b e r   o f   s c r e e n s )C GHG I   ?gI?f
?g .sysodelanull??? ??? nmbrI m    JJ ??      ?f  H KLK l   ?eMN?e  M   return   N ?OO    r e t u r nL PQP I   ?dR?c
?d .prcskcodnull???     ****R m    ?b?b $?c  Q S?aS I    ?`T?_
?` .ascrcmnt****      ? ****T m    UU ?VV F [ s c r e e n _ r e c o r d i n g ( ) ] R e c o r d i n g   s t a r t?_  ?a  2 m     WW?                                                                                  sevs  alis    \  Macintosh HD                   BD ????System Events.app                                              ????            ????  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ??  0 XYX l  " "?^?]?\?^  ?]  ?\  Y Z[Z r   " )\]\ l  " '^?[?Z^ I  " '?Y?X?W
?Y .misccurdldt    ??? null?X  ?W  ?[  ?Z  ] o      ?V?V 0 cdate cDate[ _`_ I  * /?Ua?T
?U .sysodelanull??? ??? nmbra o   * +?S?S 0 
input_time  ?T  ` bcb r   0 9ded l  0 7f?R?Qf \   0 7ghg l  0 5i?P?Oi I  0 5?N?M?L
?N .misccurdldt    ??? null?M  ?L  ?P  ?O  h o   5 6?K?K 0 cdate cDate?R  ?Q  e o      ?J?J 0 elapsedtime elapsedTimec jkj l  : :?I?H?G?I  ?H  ?G  k lml O   : Snon k   > Rpp qrq l  > >?Fst?F  s 0 * command+control+esc to complete recording   t ?uu T   c o m m a n d + c o n t r o l + e s c   t o   c o m p l e t e   r e c o r d i n gr vwv I  > H?Exy
?E .prcskcodnull???     ****x m   > ??D?D 5y ?Cz?B
?C 
faalz J   @ D{{ |}| m   @ A?A
?A eMdsKcmd} ~?@~ m   A B??
?? eMdsKctl?@  ?B  w ? l  I I?>???>  ? 9 3 Commentout the dialog display if it is not needed.   ? ??? f   C o m m e n t o u t   t h e   d i a l o g   d i s p l a y   i f   i t   i s   n o t   n e e d e d .? ??=? I  I R?<??;
?< .ascrcmnt****      ? ****? b   I N??? b   I L??? m   I J?? ??? \ [ s c r e e n _ r e c o r d i n g ( ) ] R e c o r d i n g   e n d : E l a p s e d   t i m e? o   J K?:?: 0 elapsedtime elapsedTime? m   L M?? ???  s e c?;  ?=  o m   : ;???                                                                                  sevs  alis    \  Macintosh HD                   BD ????System Events.app                                              ????            ????  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ??  m ??? l  T T?9?8?7?9  ?8  ?7  ? ??6? L   T V?5?5  ?6  ) ??? l     ?4?3?2?4  ?3  ?2  ? ??? l      ?1???1  ?$******************************************************* 
 Function Name:
	quit_quicktimeplayer():
	Function to quit QuickTime Player
 Arguments:
	None
 Return value:
	None
 Description:
	Quit QuickTime Player with the quit command
*******************************************************   ? ???< * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *   
   F u n c t i o n   N a m e : 
 	 q u i t _ q u i c k t i m e p l a y e r ( ) : 
 	 F u n c t i o n   t o   q u i t   Q u i c k T i m e   P l a y e r 
   A r g u m e n t s : 
 	 N o n e 
   R e t u r n   v a l u e : 
 	 N o n e 
   D e s c r i p t i o n : 
 	 Q u i t   Q u i c k T i m e   P l a y e r   w i t h   t h e   q u i t   c o m m a n d 
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *? ??? i    ??? I      ?0?/?.?0 0 quit_quicktimeplayer  ?/  ?.  ? O     ??? k    ?? ??? I   	?-??,
?- .ascrcmnt****      ? ****? m    ?? ??? Z [ q u i t _ q u i c k t i m e p l a y e r ( ) ] Q u i c k T i m e   P l a y e r   q u i t?,  ? ??+? I  
 ?*?)?(
?* .aevtquitnull??? ??? null?)  ?(  ?+  ? m     ???                                                                                  mgvr  alis    X  Macintosh HD                   BD ????QuickTime Player.app                                           ????            ????  
 cu             Applications  +/:System:Applications:QuickTime Player.app/   *  Q u i c k T i m e   P l a y e r . a p p    M a c i n t o s h   H D  (System/Applications/QuickTime Player.app  / ??  ? ??? l     ?'?&?%?'  ?&  ?%  ? ??? l      ?$???$  ??|*******************************************************
 Function Name:
	main():
	main function that executes screen recording with QuickTime Player
 Arguments:
	None
 Return value:
	None
 Description:
	Allow screen recording process only while QuickTime Player is running
	If there are screens that can be recorded, recording is performed for the specified time (start to stop).
	If there are no screens available for recording or If there is no screen available for recording and 
	QuickTime Player is not running QuickTime Player is terminated and an error dialog is displayed.
*******************************************************   ? ???? * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
   F u n c t i o n   N a m e : 
 	 m a i n ( ) : 
 	 m a i n   f u n c t i o n   t h a t   e x e c u t e s   s c r e e n   r e c o r d i n g   w i t h   Q u i c k T i m e   P l a y e r 
   A r g u m e n t s : 
 	 N o n e 
   R e t u r n   v a l u e : 
 	 N o n e 
   D e s c r i p t i o n : 
 	 A l l o w   s c r e e n   r e c o r d i n g   p r o c e s s   o n l y   w h i l e   Q u i c k T i m e   P l a y e r   i s   r u n n i n g 
 	 I f   t h e r e   a r e   s c r e e n s   t h a t   c a n   b e   r e c o r d e d ,   r e c o r d i n g   i s   p e r f o r m e d   f o r   t h e   s p e c i f i e d   t i m e   ( s t a r t   t o   s t o p ) . 
 	 I f   t h e r e   a r e   n o   s c r e e n s   a v a i l a b l e   f o r   r e c o r d i n g   o r   I f   t h e r e   i s   n o   s c r e e n   a v a i l a b l e   f o r   r e c o r d i n g   a n d   
 	 Q u i c k T i m e   P l a y e r   i s   n o t   r u n n i n g   Q u i c k T i m e   P l a y e r   i s   t e r m i n a t e d   a n d   a n   e r r o r   d i a l o g   i s   d i s p l a y e d . 
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *? ??? i    ??? I      ?#?"?!?# 0 main  ?"  ?!  ? k     d?? ??? Z     Y??? ?? =     ??? I     ???? "0 quicktimeplayer_runnning_check  ?  ?  ? m    ?
? boovtrue? k   
 Q?? ??? r   
 ??? I   
 ???? 0 ask_recording_time  ?  ?  ? o      ?? 0 	input_num  ? ??? Z    Q????? ?   ??? o    ?? 0 	input_num  ? m    ??  ? Z    B????? =    ??? I    ???? %0 !quicktimeplayer_play_multiscreens  ?  ?  ? m    ?
? boovtrue? k   " 4?? ??? I   " (???? 0 screen_recording  ? ??? o   # $?? 0 	input_num  ?  ?  ? ??? I   ) .?
?	??
 0 quit_quicktimeplayer  ?	  ?  ? ??? I  / 4???
? .sysodlogaskr        TEXT? m   / 0?? ??? T S c r e e n   r e c o r d i n g   i s   c o m p l e t e .   Q u i t   s c r i p t .?  ?  ?  ? k   7 B?? ??? I   7 <???? 0 quit_quicktimeplayer  ?  ?  ? ??? I  = B? ???
?  .sysodlogaskr        TEXT? m   = >?? ??? N V i d e o   f i l e   d o e s   n o t   e x i s t .   Q u i t   s c r i p t .??  ?  ?  ? l  E Q?????? I  E Q????
?? .sysodlogaskr        TEXT? m   E F?? ??? ? P l e a s e   e n t e r   a   p o s i t i v e   i n t e g e r   f o r   t h e   e l a p s e d   t i m e . Q u i t   s c r i p t .? ????
?? 
btns? J   G K?? ??? m   G H?? ???  C a n c e l? ???? m   H I?? ???  O K??  ? ?????
?? 
dflt? m   L M?? ???  O K??  ??  ??  ?  ?   ? I  T Y?????
?? .sysodlogaskr        TEXT? m   T U?? ??? \ P l e a s e   A c t i v a t e   Q u i c k T i m e   P l a y e r .   Q u i t   s c r i p t .??  ? ??? I  Z a?????
?? .ascrcmnt****      ? ****? m   Z ]?? ??? $ [ m a i n ( ) ] S c r i p t   e n d??  ? ???? L   b d????  ??  ? ??? l     ????????  ??  ??  ? ??? l     ??????  ?   main function call   ? ??? &   m a i n   f u n c t i o n   c a l l? ???? l    ?????? I     ???????? 0 main  ??  ??  ??  ??  ??       	?? ??    ???????????????? 0 ask_recording_time  ?? "0 quicktimeplayer_runnning_check  ?? %0 !quicktimeplayer_play_multiscreens  ?? 0 screen_recording  ?? 0 quit_quicktimeplayer  ?? 0 main  
?? .aevtoappnull  ?   ? **** ?? ????	???? 0 ask_recording_time  ??  ??   ?????????? 0 results  ?? 0 input_returned  ?? 0 button_returned  ?? 0 recording_time  	  &?? *?????? 3 6?? 9???????? O V?????????? u w??
?? 
dtxt
?? 
disp
?? stic   
?? 
btns
?? 
dflt?? 
?? .sysodlogaskr        TEXT
?? 
ttxt
?? 
bhit
?? .sysodisAaleR        TEXT
?? .aevtquitnull??? ??? null
?? 
nmbr??  ??  
?? .ascrcmnt****      ? ****?? i VhZ????????lv??? E?O??,E?O??,E?O??  ?j Ojvj Y hO ?a &E?OW X  hOP[OY??Oa ?%a %j O? ?? ?????
???? "0 quicktimeplayer_runnning_check  ??  ??  
 ???? 0 qtrunningflag qtRunningFlag  ???
?? 
prun?? fE?O??,e  eE?Y hO? ?? ????????? %0 !quicktimeplayer_play_multiscreens  ??  ??   ?????????? (0 qtactivescreenflag qtActiveScreenFlag?? 0 dlist dList?? 0 	dlist_num 	dList_num?? 0 i   
?????? ???????????
?? .miscactvnull??? ??? null
?? 
docu
?? .corecnte****       ****
?? .ascrcmnt****      ? ****
?? 
kocl
?? 
cobj
?? 
loop
?? .MVWRplaynull???     docu?? c? \fE?O*j O*?-E?O?j E?O??%j O?j 5eE?O ?[??l kh ? e*?,FU[OY??O*?- *j 	UY hUO? ??+???????? 0 screen_recording  ?? ????   ???? 0 
input_time  ??   ???????? 0 
input_time  ?? 0 cdate cDate?? 0 elapsedtime elapsedTime W??????????J????U???????????? 
?? 
faal
?? eMdsKcmd
?? eMdsKsft
?? .prcskcodnull???     ****
?? .sysodelanull??? ??? nmbr?? $
?? .ascrcmnt****      ? ****
?? .misccurdldt    ??? null?? 5
?? eMdsKctl?? W? ????lvl O?j O?j O?j 
UO*j E?O?j O*j ?E?O? ????lvl O??%?%j 
UOh ??????????? 0 quit_quicktimeplayer  ??  ??     ??????
?? .ascrcmnt****      ? ****
?? .aevtquitnull??? ??? null?? ? ?j O*j U ??????????? 0 main  ??  ??   ???? 0 	input_num   ?????????????????????????????? "0 quicktimeplayer_runnning_check  ?? 0 ask_recording_time  ?? %0 !quicktimeplayer_play_multiscreens  ?? 0 screen_recording  ?? 0 quit_quicktimeplayer  
?? .sysodlogaskr        TEXT
?? 
btns
?? 
dflt?? 
?? .ascrcmnt****      ? ****?? e*j+  e  L*j+ E?O?j /*j+ e  *?k+ O*j+ O?j Y *j+ O?j Y ????lv??? Y ?j Oa j Oh ????????
?? .aevtoappnull  ?   ? **** k      ?????  ??  ??     ???? 0 main  ?? *j+   ascr  ??ޭ