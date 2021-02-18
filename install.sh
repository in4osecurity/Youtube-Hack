echo -e "\e[035m"  "Updating default packages\n"
apt update && apt upgrade -y

echo -e "\e[032m" "Requesting acces to storage\n"
sleep 2
echo -e "\e[032m" "Allow Storage Permission!"
sleep 2
termux-setup-storage
sleep 5

echo -e "\e[033m" "Installing python\n"
pkg install python -y

echo -e "\e[034m"  "Installing youtube-dl\n"
pip install youtube-dl

echo -e "\e[032m"  "Making the Youtube Directory to download the Vidoes\n"
mkdir ~/storage/shared/Youtube

echo -e "\e[036m"  "Creating youtube-dl folder for config\n"
mkdir -p ~/.config/youtube-dl

echo -e "Creating bin folder\n"
mkdir ~/bin

echo -e "Creating Termux-URL-Opener Script.\n"

mv termux-url-opener ~/bin/
clear
echo -e "\n"
echo -e "\e[032m" "Process Complete!"
echo -e "\e[032m" "Now you can share any Youtube video with Termux and you will be ask to select the quality of your downloaded video and after that,It will be automatically Downloaded"
echo -e "\e[033m" "Please subscribe to my TG channel @blackhat_lab!"
