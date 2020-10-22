using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Back_Click(object sender, EventArgs e)
        {

        }
        protected void Success_Click(object sender, EventArgs e)
        {
            string carValue = CarsSelect.Value;
            string firstNameValue = FirstNameInput.Value;
            string lastNameValue = LastNameInput.Value;
            string favoriteCarValue = FavoriteCarInput.Value;
            string numberOfSeatsValue = NumberOfSeatsInput.Value;

            bool isFirstPageValid = ValidateFirstPage(carValue, firstNameValue, lastNameValue, favoriteCarValue, numberOfSeatsValue);

            if (isFirstPageValid)
            {
                FirstPagePanel.Visible = false;
                SecondPagePanel.Visible = true;
            }
        }

        protected bool ValidateFirstPage(string carValue, string firstNameValue, string lastNameValue, string favoriteCarValue, string numberOfSeatsValue)
        {
            if (string.IsNullOrWhiteSpace(carValue))
            {
                ErrorLabel.Text = "Car value cannot be null or whitespace";
                ErrorLabel.Visible = true;
                return false;
            }

            if (string.IsNullOrWhiteSpace(firstNameValue))
            {
                ErrorLabel.Text = "First Name cannot be null or whitespace";
                ErrorLabel.Visible = true;
                return false;
            }

            if (string.IsNullOrWhiteSpace(lastNameValue))
            {
                ErrorLabel.Text = "Last Name cannot be null or whitespace";
                ErrorLabel.Visible = true;
                return false;
            }

            if (string.IsNullOrWhiteSpace(favoriteCarValue))
            {
                ErrorLabel.Text = "Favorite Car cannot be null or whitespace";
                ErrorLabel.Visible = true;
                return false;
            }

            if (string.IsNullOrWhiteSpace(numberOfSeatsValue))
            {
                ErrorLabel.Text = "Number of Seats cannot be null or whitespace";
                ErrorLabel.Visible = true;
                return false;
            }

            return true;
        }
    }
}