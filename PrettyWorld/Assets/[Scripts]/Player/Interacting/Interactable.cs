using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Interactable : MonoBehaviour
{
    public enum ObjectType { Chest }
    public ObjectType objectType;
    [SerializeField] float radius = 3f;

    public Transform canvas;

    private void Awake()
    {
        canvas = transform.GetChild(0);
    }

    private void OnDrawGizmosSelected()
    {
        Gizmos.color = Color.blue;
        Gizmos.DrawWireSphere(transform.position, radius);
    }

    public void Interact()
    {
        switch (objectType)
        {
            case ObjectType.Chest:
                {
                    break;
                }
        }
    }

    public IEnumerator DisplayInfo(bool state, float displayTime)
    {
        canvas.gameObject.SetActive(state);

        yield return new WaitForSeconds(displayTime);
        canvas.gameObject.SetActive(!state);
    }
}

