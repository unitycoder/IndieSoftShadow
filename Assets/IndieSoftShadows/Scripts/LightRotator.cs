using UnityEngine;
using System.Collections;


public class LightRotator : MonoBehaviour {


	
	void Update () {
	
		transform.eulerAngles += new Vector3(0,10*Time.deltaTime,0); 

	}
}
