###### Class v4.f (v4.f)
.class final Lv4/f;
.super Lv4/b;
.source "com.google.android.play:core@@1.10.2"


# instance fields
.field final synthetic p:Lv4/m;


# direct methods
.method constructor <init>(Lv4/m;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lv4/f;->p:Lv4/m;

    invoke-direct {p0}, Lv4/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    .line 1
    iget-object v0, p0, Lv4/f;->p:Lv4/m;

    invoke-static {v0}, Lv4/m;->d(Lv4/m;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lv4/f;->p:Lv4/m;

    invoke-static {v0}, Lv4/m;->f(Lv4/m;)Lv4/a;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Unbind from service."

    invoke-virtual {v0, v3, v2}, Lv4/a;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v0, p0, Lv4/f;->p:Lv4/m;

    invoke-static {v0}, Lv4/m;->a(Lv4/m;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lv4/f;->p:Lv4/m;

    invoke-static {v2}, Lv4/m;->b(Lv4/m;)Landroid/content/ServiceConnection;

    move-result-object v2

    .line 2
    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lv4/f;->p:Lv4/m;

    .line 3
    invoke-static {v0, v1}, Lv4/m;->k(Lv4/m;Z)V

    iget-object v0, p0, Lv4/f;->p:Lv4/m;

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lv4/m;->l(Lv4/m;Landroid/os/IInterface;)V

    iget-object v0, p0, Lv4/f;->p:Lv4/m;

    .line 5
    invoke-static {v0, v1}, Lv4/m;->j(Lv4/m;Landroid/content/ServiceConnection;)V

    :cond_35
    iget-object v0, p0, Lv4/f;->p:Lv4/m;

    .line 6
    invoke-static {v0}, Lv4/m;->m(Lv4/m;)V

    return-void
.end method
