using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMovement : MonoBehaviour
{
    CharacterController charControl;
    [SerializeField] float moveSpeed;

    void Awake()
    {
        charControl = GetComponent<CharacterController>();
    }

    void Update()
    {
        MovePlayer();
    }

    void MovePlayer()
    {
        float horiz = Input.GetAxis("Horizontal");
        float vert = Input.GetAxis("Vertical");

        Vector3 moveDirSide = transform.right * horiz * moveSpeed;
        Vector3 moveDirForward = transform.forward * vert * moveSpeed;

        charControl.SimpleMove(moveDirSide);
        charControl.SimpleMove(moveDirForward);
    }
}
