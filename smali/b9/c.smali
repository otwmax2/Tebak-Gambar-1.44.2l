###### Class b9.c (b9.c)
.class Lb9/c;
.super Lb9/a;
.source "OAuthHandler.java"


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/r;Lcom/twitter/sdk/android/core/c;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/r;",
            "Lcom/twitter/sdk/android/core/c<",
            "Lcom/twitter/sdk/android/core/a0;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lb9/a;-><init>(Lcom/twitter/sdk/android/core/r;Lcom/twitter/sdk/android/core/c;I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Z
    .registers 4

    .line 1
    invoke-virtual {p0, p1}, Lb9/c;->e(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    iget v1, p0, Lb9/a;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p1, 0x1

    return p1
.end method

.method e(Landroid/app/Activity;)Landroid/content/Intent;
    .registers 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/sdk/android/core/identity/OAuthActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    invoke-virtual {p0}, Lb9/a;->b()Lcom/twitter/sdk/android/core/r;

    move-result-object p1

    const-string v1, "auth_config"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method
