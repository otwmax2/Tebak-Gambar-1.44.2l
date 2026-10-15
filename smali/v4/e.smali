###### Class v4.e (v4.e)
.class final Lv4/e;
.super Lv4/b;
.source "com.google.android.play:core@@1.10.2"


# instance fields
.field final synthetic p:Lv4/b;

.field final synthetic q:Lv4/m;


# direct methods
.method constructor <init>(Lv4/m;Ly4/p;Lv4/b;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lv4/e;->q:Lv4/m;

    iput-object p3, p0, Lv4/e;->p:Lv4/b;

    invoke-direct {p0, p2}, Lv4/b;-><init>(Ly4/p;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .line 1
    iget-object v0, p0, Lv4/e;->q:Lv4/m;

    iget-object v1, p0, Lv4/e;->p:Lv4/b;

    invoke-static {v0, v1}, Lv4/m;->n(Lv4/m;Lv4/b;)V

    return-void
.end method
