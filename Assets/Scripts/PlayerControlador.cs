using UnityEngine;
using UnityEngine.InputSystem;

public class PlayerControlador : MonoBehaviour {
    public float velocidad = 5f;
    Vector2 mov;

    public void OnMove(InputValue v) => mov = Mathf.Abs(v.Get<Vector2>().x) > Mathf.Abs(v.Get<Vector2>().y) ? new Vector2(v.Get<Vector2>().x, 0) : new Vector2(0, v.Get<Vector2>().y);
    void FixedUpdate() => GetComponent<Rigidbody2D>().linearVelocity = mov * velocidad;
}