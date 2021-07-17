import 'package:capex/screens/go_business/business_selection.dart';
import 'package:capex/screens/go_business/company_types.dart';
import 'package:capex/screens/go_business/home_go_business.dart';
import 'file:///C:/Users/Nora/AndroidStudioProjects/capex/lib/screens/go_loan/corporation_loan/corpration_loan_types/corp_bank_loan.dart';
import 'package:capex/screens/go_loan/corporation_loan/corp_curved_bars/corp_home_curved_navigationbar.dart';
import 'package:capex/screens/go_loan/corporation_loan/corp_curved_bars/corp_my_profile_curved_navigationbar.dart';
import 'package:capex/screens/go_loan/corporation_loan/corp_curved_bars/corp_new_loan_curved_navigationbar.dart';
import 'package:capex/screens/go_loan/corporation_loan/corp_curved_bars/corp_status_curved_navigationbar.dart';
import 'package:capex/screens/go_loan/corporation_loan/corp_home_go_loan.dart';
import 'file:///C:/Users/Nora/AndroidStudioProjects/capex/lib/screens/go_loan/corporation_loan/corpration_loan_types/corp_equity_investment_loan.dart';
import 'file:///C:/Users/Nora/AndroidStudioProjects/capex/lib/screens/go_loan/corporation_loan/corpration_loan_types/corp_factoring_service_loan.dart';
import 'file:///C:/Users/Nora/AndroidStudioProjects/capex/lib/screens/go_loan/corporation_loan/corpration_loan_types/corp_leasing_service_loan.dart';
import 'file:///C:/Users/Nora/AndroidStudioProjects/capex/lib/screens/go_loan/corporation_loan/corpration_loan_types/corp_mortgage_service_loan.dart';
import 'file:///C:/Users/Nora/AndroidStudioProjects/capex/lib/screens/go_loan/corporation_loan/corpration_loan_types/corporation_loan_types.dart';
import 'file:///C:/Users/Nora/AndroidStudioProjects/capex/lib/screens/go_loan/corporation_loan/first_corporation_loan_form.dart';
import 'package:capex/screens/go_loan/individual_loan/first_individual_loan_form.dart';
import 'file:///C:/Users/Nora/AndroidStudioProjects/capex/lib/screens/go_loan/individual_loan/individual_loan_types/ind_auto_loan.dart';
import 'package:capex/screens/go_loan/individual_loan/ind_curved_bars/ind_home_curved_navigationbar.dart';
import 'package:capex/screens/go_loan/individual_loan/ind_curved_bars/ind_my_profile_curved_navigationbar.dart';
import 'package:capex/screens/go_loan/individual_loan/ind_curved_bars/ind_new_loan_curved_navigationbar.dart';
import 'package:capex/screens/go_loan/individual_loan/ind_curved_bars/ind_status_curved_navigationbar.dart';
import 'package:capex/screens/go_loan/individual_loan/ind_home_go_loan.dart';
import 'file:///C:/Users/Nora/AndroidStudioProjects/capex/lib/screens/go_loan/individual_loan/individual_loan_types/ind_education_loan.dart';
import 'file:///C:/Users/Nora/AndroidStudioProjects/capex/lib/screens/go_loan/individual_loan/individual_loan_types/ind_household_loan.dart';
import 'file:///C:/Users/Nora/AndroidStudioProjects/capex/lib/screens/go_loan/individual_loan/individual_loan_types/ind_personal_loan.dart';
import 'file:///C:/Users/Nora/AndroidStudioProjects/capex/lib/screens/go_loan/individual_loan/individual_loan_types/ind_real_estate_loan.dart';
import 'file:///C:/Users/Nora/AndroidStudioProjects/capex/lib/screens/go_loan/individual_loan/individual_loan_types/ind_solar_power_loan.dart';
import 'file:///C:/Users/Nora/AndroidStudioProjects/capex/lib/screens/go_loan/individual_loan/individual_loan_types/ind_travelling_loan.dart';
import 'file:///C:/Users/Nora/AndroidStudioProjects/capex/lib/screens/go_loan/individual_loan/individual_loan_types/individual_loan_types.dart';
import 'package:capex/screens/log_in.dart';
import 'package:capex/screens/my_profile.dart';
import 'package:capex/screens/settings.dart';
import 'file:///C:/Users/Nora/AndroidStudioProjects/capex/lib/screens/go_loan/go_loan.dart';
import 'package:capex/screens/status.dart';
import 'package:flutter/material.dart';

import 'package:capex/screens/splash.dart';
import 'package:capex/screens/home/home.dart';
import 'package:capex/screens/sign_up.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(
            elevation: 0,
            backgroundColor: Color(0xff3d5a96),
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold
            ),
            iconTheme: IconThemeData(
              color: Colors.white
            ),
          ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Color(0xff3d5a96),
          )
      ),
      darkTheme: ThemeData(
        scaffoldBackgroundColor: Color(0xff333739),
        appBarTheme: AppBarTheme(
          elevation: 0,
          backgroundColor: Color(0xff3d5a96),
          titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold
          ),
          iconTheme: IconThemeData(
              color: Colors.white
          ),
        ),

      ),
      themeMode: ThemeMode.light,
      title: 'Flutter Demo',
      initialRoute: 'SplashScreen',
      routes: {
        'SplashScreen': (context) => SplashScreen(),
        '/LogIn': (context) => LogIn(),
        '/SignUp': (context) => SignUp(),
        '/Home': (context) => Home(),

        '/MyProfile': (context) => MyProfile(),
        '/Status': (context) => Status(),
        '/Settings': (context) => Settings(),


        //---------------go loan----------------------
        //---------------new loan--------------------
        '/GoLoan': (context) => GoLoan(),
        //---------------individual-----------------
        '/IndHomeGoLoan': (context) => IndHomeGoLoan(),
        '/FirstIndividualLoanForm': (context) => FirstIndividualLoanForm(),
        //---------------ind curved bars ------------------
        '/IndHomeCurvedNavigationBar': (context) => IndHomeCurvedNavigationBar(),
        '/IndNewLoanCurvedNavigationBar': (context) =>   IndNewLoanCurvedNavigationBar(),
        '/IndStatusCurvedNavigationBar': (context) => IndStatusCurvedNavigationBar(),
        '/IndMyProfileCurvedNavigationBar': (context) => IndMyProfileCurvedNavigationBar(),
        //---------------individual types-----------------
        '/IndividualLoanTypes': (context) => IndividualLoanTypes(),
        '/IndAutoLoan': (context) => IndAutoLoan(),
        '/IndEducationLoan': (context) => IndEducationLoan(),
        '/IndHouseholdLoan': (context) => IndHouseholdLoan(),
        '/IndPersonalLoan': (context) => IndPersonalLoan(),
        '/IndRealEstateLoan': (context) => IndRealEstateLoan(),
        '/IndSolarPowerLoan': (context) => IndSolarPowerLoan(),
        '/IndTravellingLoan': (context) => IndTravellingLoan(),




        //---------------corporation-----------------
        '/CorpHomeGoLoan': (context) => CorpHomeGoLoan(),
        '/FirstCorporationLoanForm': (context) => FirstCorporationLoanForm(),
        //---------------ind curved bars ------------------
        '/CorpHomeCurvedNavigationBar': (context) => CorpHomeCurvedNavigationBar(),
        '/CorpNewLoanCurvedNavigationBar': (context) =>   CorpNewLoanCurvedNavigationBar(),
        '/CorpStatusCurvedNavigationBar': (context) => CorpStatusCurvedNavigationBar(),
        '/CorpMyProfileCurvedNavigationBar': (context) => CorpMyProfileCurvedNavigationBar(),
        //---------------corporation types-----------------
        '/CorporationLoanTypes': (context) => CorporationLoanTypes(),
        '/CorpBankLoan': (context) => CorpBankLoan(),
        '/CorpEquityInvestmentLoan': (context) => CorpEquityInvestmentLoan(),
        '/CorpFactoringServiceLoan': (context) => CorpFactoringServiceLoan(),
        '/CorpMortgageServiceLoan': (context) => CorpMortgageServiceLoan(),
        '/CorpLeasingServiceLoan': (context) => CorpLeasingServiceLoan(),




        //---------------go business----------------------
        '/CompanyType': (context) => CompanyType(),
        '/BusinessSelection': (context) => BusinessSelection(),
        '/HomeGoBusiness': (context) => HomeGoBusiness(),
      },
    );
  }
}