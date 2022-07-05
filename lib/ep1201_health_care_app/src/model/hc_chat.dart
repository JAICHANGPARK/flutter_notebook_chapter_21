class HcChat {
  String? name;
  String? msg;
  String? tag;
  String? time;
  int? unreadMsg;
  String? profileImg;

  HcChat({
    this.name,
    this.msg,
    this.tag,
    this.time,
    this.unreadMsg,
    this.profileImg,
  });
}

List<HcChat> hcChatItems = [
  HcChat(
    name: "Taylor Davis",
    msg:
        "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
    unreadMsg: 1,
    profileImg: "https://cdn.pixabay.com/photo/2020/05/17/20/21/cat-5183427_960_720.jpg",
    tag: "BILLING",
    time: "5:12 PM",
  ),
  HcChat(
    name: "Charlie Donin",
    msg:
        "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
    unreadMsg: 2,
    profileImg: "https://cdn.pixabay.com/photo/2020/05/17/20/21/cat-5183427_960_720.jpg",
    tag: null,
    time: "3:23 PM",
  ),
  HcChat(
    name: "Charlie Donin",
    msg:
        "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
    unreadMsg: 0,
    profileImg: "https://cdn.pixabay.com/photo/2020/10/04/10/43/horse-5625922_960_720.jpg",
    tag: "CRED",
    time: "3:23 PM",
  ),
  HcChat(
    name: "Charlie Donin",
    msg:
        "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua",
    unreadMsg: 0,
    profileImg: "https://cdn.pixabay.com/photo/2020/05/17/20/21/cat-5183427_960_720.jpg",
    tag: "BILLING",
    time: "3:23 PM",
  ),
];
