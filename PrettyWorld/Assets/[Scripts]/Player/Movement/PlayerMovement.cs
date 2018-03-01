using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMovement : MonoBehaviour
{
    CharacterController charControl;
    PlayerView playerView;
    Rigidbody rb;

    [SerializeField] float moveSpeed = 6f;
    [SerializeField] float jumpSpeed = 8f;
    [SerializeField] float gravity = 20f;

    float moveSpeedCached;

    private Vector3 moveDir = Vector3.zero;

    void Awake()
    {
        charControl = GetComponent<CharacterController>();
        playerView = Camera.main.GetComponent<PlayerView>();
        rb = GetComponent<Rigidbody>();

        moveSpeedCached = moveSpeed;
    }

    void Update()
    {
        if(charControl.isGrounded)
        {
            moveDir = new Vector3(Input.GetAxis("Horizontal"), 0, Input.GetAxis("Vertical"));
            moveDir = transform.TransformDirection(moveDir);
            moveDir *= moveSpeed;
            if (Input.GetButtonDown("Jump"))
            {
                moveDir.y = jumpSpeed;
            }
        }
        moveDir.y -= gravity * Time.deltaTime;
        charControl.Move(moveDir * Time.deltaTime);

        if (Input.GetButtonDown("Sprint")) { moveSpeed *= 1.5f; }
        else if (Input.GetButtonUp("Sprint")) { moveSpeed = moveSpeedCached; }
    }
}
