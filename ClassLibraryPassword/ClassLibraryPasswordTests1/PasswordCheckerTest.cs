using ClassLibraryPassword;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace ClassLibraryPasswordTests
{
    [TestClass()]
    public class PasswordCheckerTests
    {
        [TestMethod()]
        public void Check_8Symbols_ReturnsTrue()
        {
            //Arrage.
            string password = "Asqw12$$";
            bool expected = true;

            //Act.
            bool actual = PasswordChecker.ValidatePassword(password);

            //Assert.
            Assert.AreEqual(expected, actual);
        }


        [TestMethod()]
        public void Check_4Symbols_ReturnsFasle()
        {
            //Arrage.
            string password = "Aq1$";

            //Act.
            bool actual = PasswordChecker.ValidatePassword(password);

            //Assert.
            Assert.IsFalse(actual);
        }


        [TestMethod()]
        public void Check_30Symbols_ReturnsFasle()
        {
            //Arrage.
            string password = "ASDqwel123$ASDqwe123$ASDqwe123$";
            bool expected = false;

            //Act.
            bool actual = PasswordChecker.ValidatePassword(password);

            //Assert.
            Assert.AreEqual(expected, actual);
        }


        [TestMethod()]
        public void Check_PasswordWithDigits_ReturnsTrue()
        {
            //Arrage.
            string password = "ASDqwe1$";
            bool expected = true;

            //Act.
            bool actual = PasswordChecker.ValidatePassword(password);

            //Assert.
            Assert.AreEqual(expected, actual);
        }


        [TestMethod()]
        public void Check_PasswordWithoutDigits_ReturnsFalse()
        {
            //Arrage.
            string password = "ASDqweASD$";
            bool expected = false;

            //Act.
            bool actual = PasswordChecker.ValidatePassword(password);

            //Assert.
            Assert.AreEqual(expected, actual);
        }

        [TestMethod()]
        public void Check_PasswordWithoutSpecSymbols_ReturnsTrue()
        {
            //Arrage.
            string password = "Aqwel123$";
            bool expected = true;

            //Act.
            bool actual = PasswordChecker.ValidatePassword(password);

            //Assert.
            Assert.AreEqual(expected, actual);
        }

        [TestMethod()]
        public void Check_PasswordWithCapsSymbols_ReturnsFalse()
        {
            //Arrage.
            string password = "ASDqwe123";
            bool expected = false;

            //Act.
            bool actual = PasswordChecker.ValidatePassword(password);

            //Assert.
            Assert.AreEqual(expected, actual);
        }


        [TestMethod()]
        public void Check_PasswordWithoutCapsSymbols_ReturnsFalse()
        {
            //Arrage.
            string password = "asdqwe123$";
            bool expected = false;

            //Act.
            bool actual = PasswordChecker.ValidatePassword(password);

            //Assert.
            Assert.AreEqual(expected, actual);
        }


        [TestMethod()]
        public void Check_PasswordWithLowerSymbols_ReturnsTrue()
        {
            //Arrage.
            string password = "ASDq123$";
            bool expected = true;

            //Act.
            bool actual = PasswordChecker.ValidatePassword(password);

            //Assert.
            Assert.AreEqual(expected, actual);
        }


        [TestMethod()]
        public void Check_PasswordWithoutLowerSymbols_ReturnsFalse()
        {
            //Arrage.
            string password = "ASDQWE123$";
            bool expected = false;

            //Act.
            bool actual = PasswordChecker.ValidatePassword(password);

            //Assert.
            Assert.AreEqual(expected, actual);
        }
    }
}
