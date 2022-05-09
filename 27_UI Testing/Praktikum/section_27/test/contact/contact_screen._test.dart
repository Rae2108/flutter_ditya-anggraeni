import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:section_27/screen/contact/contact_screen.dart';
import 'package:section_27/screen/contact/contacts_view_model.dart';
import 'package:section_27/screen/contact/add_contact.dart';
import 'package:section_27/screen/contact/edit_contact.dart';

void main() {
  contactScreenTest() {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: ((context) => ContactViewModel()),
        child: const ContactScreen(),
      ),
    );
  }

  addContactScreenTest() {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: ((context) => ContactViewModel()),
        child: const AddContact(),
      ),
    );
  }

  group("Contact Apps", () {
    group('Contact Screen', () {
      testWidgets('Should Have Title', (WidgetTester tester) async {
        await tester.pumpWidget(contactScreenTest());
        await tester.pumpAndSettle();
        expect(find.text("Contacts"), findsWidgets);
      });

      group('Add Contact Screen', () {
        testWidgets('title is displayed', (WidgetTester tester) async {
          await tester.pumpWidget(addContactScreenTest());
          await tester.pumpAndSettle(const Duration(seconds: 2));
          expect(find.text("Create New Contact"), findsOneWidget);
        });

        testWidgets('Should Have Field To Collects Name and Phone',
            (WidgetTester tester) async {
          await tester.pumpWidget(addContactScreenTest());
          expect(find.byKey(const ValueKey("name_field")), findsOneWidget);
          expect(find.byKey(const ValueKey("phone_field")), findsOneWidget);
        });

        testWidgets('Should Have Submit Button', (WidgetTester tester) async {
          await tester.pumpWidget(addContactScreenTest());
          expect(find.byType(ElevatedButton), findsOneWidget);
        });

        testWidgets('Should Have Error Message For Invalid Fields',
            (WidgetTester tester) async {
          await tester.pumpWidget(addContactScreenTest());
          await tester.tap(find.byType(ElevatedButton));
          await tester.pumpAndSettle();
          expect(find.text("Nama tidak boleh kosong"), findsWidgets);
          expect(find.text("Nomor tidak boleh kosong"), findsWidgets);
        });

        // testWidgets('Should Submit Form When Valid', (WidgetTester tester) async {
        //   await tester.pumpWidget(createScreenTest());
        //   await tester.enterText(find.byKey(const ValueKey("name_field")), "Nova");
        //   await tester.enterText(
        //       find.byKey(const ValueKey("phone_field")), "089875640560");

        //   await tester.pumpAndSettle();
        //   await tester.tap(find.byType(ElevatedButton));
        //   await tester.pumpAndSettle();
        //   expect(find.text("Nama tidak boleh kosong"), findsNothing);
        //   expect(find.text("Nomor tidak boleh kosong"), findsNothing);
        // });
      });

      group('Edit Contact Screen', () {
        testWidgets('title is displayed', (WidgetTester tester) async {
          await tester.pumpWidget(const MaterialApp(home: EditContact()));
          await tester.pumpAndSettle(const Duration(seconds: 2));
          expect(find.text("Edit Contact"), findsOneWidget);
        });

        testWidgets('Should Have Field To Collects ID, Name and Phone',
            (WidgetTester tester) async {
          await tester.pumpWidget(const MaterialApp(home: EditContact()));
          expect(find.byKey(const ValueKey("id_field")), findsOneWidget);
          expect(find.byKey(const ValueKey("name_field")), findsOneWidget);
          expect(find.byKey(const ValueKey("phone_field")), findsOneWidget);
        });

        testWidgets('Should Have Submit Button', (WidgetTester tester) async {
          await tester.pumpWidget(const MaterialApp(home: EditContact()));
          expect(find.byType(ElevatedButton), findsOneWidget);
        });

        testWidgets('Should Have Error Message For Invalid Fields',
            (WidgetTester tester) async {
          await tester.pumpWidget(const MaterialApp(home: EditContact()));
          await tester.tap(find.byType(ElevatedButton));
          await tester.pumpAndSettle();

          expect(find.text("ID tidak boleh kosong"), findsWidgets);
          expect(find.text("Nama tidak boleh kosong"), findsWidgets);
          expect(find.text("Nomor tidak boleh kosong"), findsWidgets);
        });

        testWidgets('Should Submit Form When Valid',
            (WidgetTester tester) async {
          await tester.pumpWidget(const MaterialApp(home: EditContact()));
          await tester.enterText(find.byKey(const ValueKey("id_field")), "3");
          await tester.enterText(
              find.byKey(const ValueKey("name_field")), "Nova");
          await tester.enterText(
              find.byKey(const ValueKey("phone_field")), "089875640560");

          await tester.pumpAndSettle();
          await tester.tap(find.byType(ElevatedButton));
          await tester.pumpAndSettle();
          expect(find.text("ID tidak boleh kosong"), findsNothing);
          expect(find.text("Nama tidak boleh kosong"), findsNothing);
          expect(find.text("Nomor tidak boleh kosong"), findsNothing);
        });
      });
    });
  });
}
