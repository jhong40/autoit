#include <IE.au3>

$url="https://dmgrurl/ibm/console/logon.jsp"

$User_Name = "admin"
$User_Password = "adminpass"

$oIE = _IECreate($url)
_IELinkClickByText($oIE, "More Information")
_IELinkClickByText($oIE, "Go on to the webpage (not recommended)")

$j_username = _IEGetObjByName ($oIE, "j_username")
$j_password = _IEGetObjByName ($oIE, "j_password")

_IEFormElementSetValue ($j_username, $User_Name)
_IEFormElementSetValue ($j_password, $User_Password)


$oSubmit = _IEGetObjByName($oIE, "action")
_IEAction($oSubmit, "click")
