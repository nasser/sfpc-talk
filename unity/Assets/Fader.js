var target : GameObject;

function Start() {
  if(target == null) target = gameObject;
  target.renderer.material.color.a = 0;
}

function OnTriggerEnter (other : Collider) {
  if(other.gameObject.tag == "Player")
    FadeIn();
}

function OnTriggerExit (other : Collider) {
  if(other.gameObject.tag == "Player")
    FadeOut();
}

function FadeIn() {
  while(target.renderer.material.color.a < 1) {
    target.renderer.material.color.a += Time.deltaTime * 0.5;
    yield;
  }

  target.renderer.material.color.a = 1;
}

function FadeOut() {
  while(target.renderer.material.color.a > 0) {
    target.renderer.material.color.a -= Time.deltaTime * 0.5;
    yield;
  }

  target.renderer.material.color.a = 0;
}