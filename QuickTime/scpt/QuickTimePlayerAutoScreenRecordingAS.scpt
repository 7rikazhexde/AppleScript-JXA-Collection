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
?? .ascrcmnt****      ? **** p b   X a q r q b   X ] s t s m   X [ u u ? v v H [ a s k _ r e c o r d i n g _ t i m e ( ) ] R e c o r d i n g   t i m e t o   [ \???? 0 recording_time   r m   ] ` w w ? x x  s e c??   o  y?? y L   f h z z o   f g???? 0 recording_time  ??     { | { l     ????????  ??  ??   |  } ~ } l      ??  ???   uo*******************************************************
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
*******************************************************    ? ? ? ?? * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
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
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * ~  ? ? ? i     ? ? ? I      ?? ????? 0 screen_recording   ?  ??? ? o      ???? 0 
input_time  ??  ??   ? k     V ? ?  ? ? ? O     ! ? ? ? k      ? ?  ? ? ? l   ?? ? ???   ? 7 1 command+shift+5 activates the screenshot toolbar    ? ? ? ? b   c o m m a n d + s h i f t + 5   a c t i v a t e s   t h e   s c r e e n s h o t   t o o l b a r ?  ? ? ? I   ?? ? ?
?? .prcskcodnull???     **** ? m    ????  ? ?? ???
?? 
faal ? J    
 ? ?  ? ? ? m    ??
?? eMdsKcmd ?  ??? ? m    ??
?? eMdsKsft??  ??   ?  ? ? ? l   ?? ? ???   ? T N Allow 0.5 seconds to activate the record button (adjust by number of screens)    ? ? ? ? ?   A l l o w   0 . 5   s e c o n d s   t o   a c t i v a t e   t h e   r e c o r d   b u t t o n   ( a d j u s t   b y   n u m b e r   o f   s c r e e n s ) ?  ? ? ? I   ?? ???
?? .sysodelanull??? ??? nmbr ? m     ? ? ??      ??   ?  ? ? ? l   ?? ? ???   ?   return    ? ? ? ?    r e t u r n ?  ? ? ? I   ?? ???
?? .prcskcodnull???     **** ? m    ???? $??   ?  ??? ? I    ?? ???
?? .ascrcmnt****      ? **** ? m     ? ? ? ? ? F [ s c r e e n _ r e c o r d i n g ( ) ] R e c o r d i n g   s t a r t??  ??   ? m      ? ??                                                                                  sevs  alis    \  Macintosh HD                   BD ????System Events.app                                              ????            ????  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ??   ?  ? ? ? l  " "????????  ??  ??   ?  ? ? ? r   " ) ? ? ? l  " ' ????? ? I  " '??????
?? .misccurdldt    ??? null??  ??  ??  ??   ? o      ???? 0 cdate cDate ?  ? ? ? I  * /?? ???
?? .sysodelanull??? ??? nmbr ? o   * +???? 0 
input_time  ??   ?  ? ? ? r   0 9 ? ? ? l  0 7 ????? ? \   0 7 ? ? ? l  0 5 ????? ? I  0 5??????
?? .misccurdldt    ??? null??  ??  ??  ??   ? o   5 6???? 0 cdate cDate??  ??   ? o      ???? 0 elapsedtime elapsedTime ?  ? ? ? l  : :????????  ??  ??   ?  ? ? ? O   : S ? ? ? k   > R ? ?  ? ? ? l  > >?? ? ???   ? 0 * command+control+esc to complete recording    ? ? ? ? T   c o m m a n d + c o n t r o l + e s c   t o   c o m p l e t e   r e c o r d i n g ?  ? ? ? I  > H?? ? ?
?? .prcskcodnull???     **** ? m   > ????? 5 ? ?? ???
?? 
faal ? J   @ D ? ?  ? ? ? m   @ A??
?? eMdsKcmd ?  ??? ? m   A B??
?? eMdsKctl??  ??   ?  ? ? ? l  I I?? ? ???   ? 9 3 Commentout the dialog display if it is not needed.    ? ? ? ? f   C o m m e n t o u t   t h e   d i a l o g   d i s p l a y   i f   i t   i s   n o t   n e e d e d . ?  ??? ? I  I R?? ???
?? .ascrcmnt****      ? **** ? b   I N ? ? ? b   I L ? ? ? m   I J ? ? ? ? ? \ [ s c r e e n _ r e c o r d i n g ( ) ] R e c o r d i n g   e n d : E l a p s e d   t i m e ? o   J K???? 0 elapsedtime elapsedTime ? m   L M ? ? ? ? ?  s e c??  ??   ? m   : ; ? ??                                                                                  sevs  alis    \  Macintosh HD                   BD ????System Events.app                                              ????            ????  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ??   ?  ? ? ? l  T T????????  ??  ??   ?  ?? ? L   T V?~?~  ?   ?  ? ? ? l     ?}?|?{?}  ?|  ?{   ?  ? ? ? l      ?z ? ??z   ?$******************************************************* 
 Function Name:
	quit_quicktimeplayer():
	Function to quit QuickTime Player
 Arguments:
	None
 Return value:
	None
 Description:
	Quit QuickTime Player with the quit command
*******************************************************    ? ? ? ?< * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *   
   F u n c t i o n   N a m e : 
 	 q u i t _ q u i c k t i m e p l a y e r ( ) : 
 	 F u n c t i o n   t o   q u i t   Q u i c k T i m e   P l a y e r 
   A r g u m e n t s : 
 	 N o n e 
   R e t u r n   v a l u e : 
 	 N o n e 
   D e s c r i p t i o n : 
 	 Q u i t   Q u i c k T i m e   P l a y e r   w i t h   t h e   q u i t   c o m m a n d 
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * ?  ? ? ? i     ? ? ? I      ?y?x?w?y 0 quit_quicktimeplayer  ?x  ?w   ? O      ? ? ? k     ? ?  ? ? ? I   	?v ??u
?v .ascrcmnt****      ? **** ? m     ? ? ? ? ? Z [ q u i t _ q u i c k t i m e p l a y e r ( ) ] Q u i c k T i m e   P l a y e r   q u i t?u   ?  ??t ? I  
 ?s?r?q
?s .aevtquitnull??? ??? null?r  ?q  ?t   ? m       ?                                                                                  mgvr  alis    X  Macintosh HD                   BD ????QuickTime Player.app                                           ????            ????  
 cu             Applications  +/:System:Applications:QuickTime Player.app/   *  Q u i c k T i m e   P l a y e r . a p p    M a c i n t o s h   H D  (System/Applications/QuickTime Player.app  / ??   ?  l     ?p?o?n?p  ?o  ?n    l      ?m?m  ??*******************************************************
 Function Name:
	main():
	main function that executes screen recording with QuickTime Player
 Arguments:
	None
 Return value:
	None
 Description:
 ????:
	Record for a specified time with QuickTime Player (start to stop)
	After the specified time has elapsed, recording is completed and QuickTime Player exits to display dialog
*******************************************************    ?h * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 
   F u n c t i o n   N a m e : 
 	 m a i n ( ) : 
 	 m a i n   f u n c t i o n   t h a t   e x e c u t e s   s c r e e n   r e c o r d i n g   w i t h   Q u i c k T i m e   P l a y e r 
   A r g u m e n t s : 
 	 N o n e 
   R e t u r n   v a l u e : 
 	 N o n e 
   D e s c r i p t i o n : 
  ??f : 
 	 R e c o r d   f o r   a   s p e c i f i e d   t i m e   w i t h   Q u i c k T i m e   P l a y e r   ( s t a r t   t o   s t o p ) 
 	 A f t e r   t h e   s p e c i f i e d   t i m e   h a s   e l a p s e d ,   r e c o r d i n g   i s   c o m p l e t e d   a n d   Q u i c k T i m e   P l a y e r   e x i t s   t o   d i s p l a y   d i a l o g 
 * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * 	 i    

 I      ?l?k?j?l 0 main  ?k  ?j   k     ?  r      I     ?i?h?g?i 0 ask_recording_time  ?h  ?g   o      ?f?f 0 	input_num    Z    6?e ?    o    	?d?d 0 	input_num   m   	 
?c?c   k    '  I    ?b?a?b 0 screen_recording   ?` o    ?_?_ 0 	input_num  ?`  ?a    I    ?^?]?\?^ 0 quit_quicktimeplayer  ?]  ?\   ?[ l   ' ?Z?Y  I   '?X!"
?X .sysodlogaskr        TEXT! m    ## ?$$ T S c r e e n   r e c o r d i n g   i s   c o m p l e t e .   Q u i t   s c r i p t ." ?W%&
?W 
btns% J    !'' ()( m    ** ?++  C a n c e l) ,?V, m    -- ?..  O K?V  & ?U/?T
?U 
dflt/ m   " #00 ?11  O K?T  ?Z  ?Y  ?[  ?e   l  * 62?S?R2 I  * 6?Q34
?Q .sysodlogaskr        TEXT3 m   * +55 ?66 ? P l e a s e   e n t e r   a   p o s i t i v e   i n t e g e r   f o r   t h e   e l a p s e d   t i m e . Q u i t   s c r i p t .4 ?P78
?P 
btns7 J   , 099 :;: m   , -<< ?==  C a n c e l; >?O> m   - .?? ?@@  O K?O  8 ?NA?M
?N 
dfltA m   1 2BB ?CC  O K?M  ?S  ?R   DED I  7 <?LF?K
?L .ascrcmnt****      ? ****F m   7 8GG ?HH $ [ m a i n ( ) ] S c r i p t   e n d?K  E I?JI L   = ??I?I  ?J  	 JKJ l     ?H?G?F?H  ?G  ?F  K LML l     ?ENO?E  N   main function call   O ?PP &   m a i n   f u n c t i o n   c a l lM Q?DQ l    R?C?BR I     ?A?@???A 0 main  ?@  ??  ?C  ?B  ?D       ?>STUVWX?>  S ?=?<?;?:?9?= 0 ask_recording_time  ?< 0 screen_recording  ?; 0 quit_quicktimeplayer  ?: 0 main  
?9 .aevtoappnull  ?   ? ****T ?8 ?7?6YZ?5?8 0 ask_recording_time  ?7  ?6  Y ?4?3?2?1?4 0 results  ?3 0 input_returned  ?2 0 button_returned  ?1 0 recording_time  Z  &?0 *?/?.?- 3 6?, 9?+?*?)?( O V?'?&?%?$?# u w?"
?0 
dtxt
?/ 
disp
?. stic   
?- 
btns
?, 
dflt?+ 
?* .sysodlogaskr        TEXT
?) 
ttxt
?( 
bhit
?' .sysodisAaleR        TEXT
?& .aevtquitnull??? ??? null
?% 
nmbr?$  ?#  
?" .ascrcmnt****      ? ****?5 i VhZ????????lv??? E?O??,E?O??,E?O??  ?j Ojvj Y hO ?a &E?OW X  hOP[OY??Oa ?%a %j O?U ?! ?? ?[\??! 0 screen_recording  ?  ?]? ]  ?? 0 
input_time  ?  [ ???? 0 
input_time  ? 0 cdate cDate? 0 elapsedtime elapsedTime\  ?????? ??? ????? ? ?? 
? 
faal
? eMdsKcmd
? eMdsKsft
? .prcskcodnull???     ****
? .sysodelanull??? ??? nmbr? $
? .ascrcmnt****      ? ****
? .misccurdldt    ??? null? 5
? eMdsKctl? W? ????lvl O?j O?j O?j 
UO*j E?O?j O*j ?E?O? ????lvl O??%?%j 
UOhV ? ???^_?
? 0 quit_quicktimeplayer  ?  ?  ^  _   ??	?
?	 .ascrcmnt****      ? ****
? .aevtquitnull??? ??? null?
 ? ?j O*j UW ???`a?? 0 main  ?  ?  ` ?? 0 	input_num  a ??? #??*-??0????5<?BG??? 0 ask_recording_time  ? 0 screen_recording  ?  0 quit_quicktimeplayer  
?? 
btns
?? 
dflt?? 
?? .sysodlogaskr        TEXT
?? .ascrcmnt****      ? ****? @*j+  E?O?j *?k+ O*j+ O????lv??? 
Y ????lv??? 
O?j OhX ??b????cd??
?? .aevtoappnull  ?   ? ****b k     ee Q????  ??  ??  c  d ???? 0 main  ?? *j+   ascr  ??ޭ