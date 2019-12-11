# GUN-Linux-dotfiles-scripts-code-templates

This repository has my scripts, templates and the dotfiles

This time I have set all my script In one folder without sorting In default files if you are using my alias <br>
and and keyboard shortcut then please place the script folder as it is on to the user diractory. The <br>
alias and the keyboard shortcuts are all set to read from the my script directory.This repos has my<br>
Settings for:

    bspwm (window manager)
   
    zsh (shell)
    
    i3wm/i3-gaps (window manager)
    
    i3blocks (status bar)
    
    openbox (window manager)
   
    sxhkd (general key binder)
   
    ranger (file manager)
   
    jwm(window manager)
   
    pekwm [used with sxhkd ]( window manager)
   
    tint2 (status bar)
   
    mpv (video player)
   
    calcurse (calendar program)
   
    newsboat (rss feed reader) 
   
    . bashrc .Xdefaults file for terminal settings
   
   other stuff like xdg default programs, inputrc and more, etc.

I try to minimize what's directly in ~ so: <br>
All configs that can be in ~/.config/ are. & All scripts and templates can be in ~/my scripts/are. <br>


There are to manual files for both arch and debian distro my scripts <br>
text inside <> are alias inputed in .bashrc file<br>

special firejail script

browser:

there are 3 types of scripts for browser

Different types are:

1. sandbox with a profile folder<br>
2. sandbox without a profile but can access mounted external partation<br>
3. full sandbox with all temperary setup<br>

<all can be run as alias if typed excluding '.sh'>
<table class="tg">
<tr>
    <th class="tg-yw4l">browser </th>
    <th class="tg-yw4l"> type 1</th>
    <th class="tg-yw4l">type 2 </th>
    <th class="tg-yw4l">type 3</th>
  </tr>
<tr>
    <td class="tg-yw4l">firefox </td>
    <td class="tg-yw4l"> ff.sh</td>
    <td class="tg-yw4l">f2.sh </td>
    <td class="tg-yw4l">fp.shh</td>
  </tr>
<tr>
    <td class="tg-yw4l">surf  </td>
    <td class="tg-yw4l"> </td>
    <td class="tg-yw4l"> sf2.sh</td>
    <td class="tg-yw4l">sf.sh</td>
  </tr>
<tr>
    <td class="tg-yw4l">palemoon </td>
    <td class="tg-yw4l">pm.sh </td>
    <td class="tg-yw4l">p3.sh </td>
    <td class="tg-yw4l">p2.sh</td>
  </tr>
<tr>
    <td class="tg-yw4l">luakit </td>
    <td class="tg-yw4l"> </td>
    <td class="tg-yw4l"> </td>
    <td class="tg-yw4l">slfsh</td>
  </tr>
     <tr>
    <td class="tg-yw4l">netsurf  </td>
    <td class="tg-yw4l"> </td>
    <td class="tg-yw4l">ns.sh</td>
    <td class="tg-yw4l"> </td>
  </tr>
     <tr>
    <td class="tg-yw4l">dillo  </td>
    <td class="tg-yw4l"> </td>
    <td class="tg-yw4l"> </td>
    <td class="tg-yw4l">dl.sh</td>
  </tr>
</table>

# cleaning scripts
clean.sh  <br>
archclean.sh  <br>
s.sh   <br>

# systemd extra tasks disable
systemd.sh  <br>
new  <br>
extra  <br>
# systemd extra tasks start back again
new.fx  <br>
aptfix  <br>
sr.sh <br>


# dmenu scripts 

xrandr.sh            #sets screen resolution: (needs editing depending your screen & hardware) <br>
nl.sh                              # night-light/eye-protection uses redshift <br>
file_find.sh                    # searches what ever you want to open in vi or nano <br>
screen-record.sh       # records desktop <br>
webcam.sh                # records with webcam  <br>
#needs editing depending on your hardware <br>

pdffinder.sh                # searches pdf  <br>
videoplayer               # searches and plays video  <br>
videowatch               # plays video  <br>
ss                                # views sockets  <br>


# bspwm only scripts

bspwm-gap.sh 


# tor

requires installing tor and proxychains4  <br>
ftor.sh     <alias torset>          # start tor service switch to tor iptables firewall refresh all sandboxs runing on the desktop  <br>
tor.sh      <alias stor>           # launch sandbox browsers with tor proxy  <br>


# Natwork connection related 

smip.sh  # lets you selects different versions of firewall setting  <br>

tk.sh    # kills all ports connected  <br>

# views all ports connected and there information 

nslookup.sh     <alias nsup>  <br>

# networkmanager
sta stp re      <can be run as alias>  <br>


# others 
playlists.sh    <alias yt>    # runs and plays playlists from clouds with mpv  <br>
ntfs            <alias ntfs>  # fixes ntfs error on partation  <br>
updatedb.sh                   # updates database  <br>

