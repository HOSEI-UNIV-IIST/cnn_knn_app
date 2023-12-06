enum HomePageStatus {
  home,
  information,
  message,
  meeting,
  cotisation,
  profile,
  help,
  respoAssociation,
  memberAssociation
}

enum NewsStatus { information, message, meeting, payment, flashnews, other }

enum AssoStatus { member, responsible }

enum ThemeModeStatus { system, light, dark }

enum BlocStatus { initial, progress, success, failure }

enum PaiementStatus { paid, unpaid, halfpaid, inprogress }

enum BoardingStatus { admin, member, unknow }

enum LoginStatus { signin, signup, signout, resetPassword, updatePassword }

enum SignupStep { personalInfo, securityInfo }
