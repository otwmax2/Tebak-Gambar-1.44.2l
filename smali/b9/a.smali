###### Class b9.a (b9.a)
.class public abstract Lb9/a;
.super Ljava/lang/Object;
.source "AuthHandler.java"


# instance fields
.field protected final a:I

.field private final b:Lcom/twitter/sdk/android/core/r;

.field private final c:Lcom/twitter/sdk/android/core/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/c<",
            "Lcom/twitter/sdk/android/core/a0;",
            ">;"
        }
    .end annotation
.end field


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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb9/a;->b:Lcom/twitter/sdk/android/core/r;

    .line 3
    iput-object p2, p0, Lb9/a;->c:Lcom/twitter/sdk/android/core/c;

    .line 4
    iput p3, p0, Lb9/a;->a:I

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/app/Activity;)Z
.end method

.method b()Lcom/twitter/sdk/android/core/r;
    .registers 2

    .line 1
    iget-object v0, p0, Lb9/a;->b:Lcom/twitter/sdk/android/core/r;

    return-object v0
.end method

.method c()Lcom/twitter/sdk/android/core/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/sdk/android/core/c<",
            "Lcom/twitter/sdk/android/core/a0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb9/a;->c:Lcom/twitter/sdk/android/core/c;

    return-object v0
.end method

.method public d(IILandroid/content/Intent;)Z
    .registers 10

    .line 1
    iget v0, p0, Lb9/a;->a:I

    if-eq v0, p1, :cond_6

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_6
    invoke-virtual {p0}, Lb9/a;->c()Lcom/twitter/sdk/android/core/c;

    move-result-object p1

    if-eqz p1, :cond_5b

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3d

    const-string p2, "tk"

    .line 3
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "ts"

    .line 4
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "screen_name"

    .line 5
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-string v4, "user_id"

    .line 6
    invoke-virtual {p3, v4, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 7
    new-instance p3, Lcom/twitter/sdk/android/core/l;

    new-instance v4, Lcom/twitter/sdk/android/core/a0;

    new-instance v5, Lcom/twitter/sdk/android/core/t;

    invoke-direct {v5, p2, v0}, Lcom/twitter/sdk/android/core/t;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5, v2, v3, v1}, Lcom/twitter/sdk/android/core/a0;-><init>(Lcom/twitter/sdk/android/core/t;JLjava/lang/String;)V

    const/4 p2, 0x0

    invoke-direct {p3, v4, p2}, Lcom/twitter/sdk/android/core/l;-><init>(Ljava/lang/Object;Lwa/l;)V

    invoke-virtual {p1, p3}, Lcom/twitter/sdk/android/core/c;->d(Lcom/twitter/sdk/android/core/l;)V

    goto :goto_5b

    :cond_3d
    if-eqz p3, :cond_51

    const-string p2, "auth_error"

    .line 8
    invoke-virtual {p3, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 9
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Lcom/twitter/sdk/android/core/s;

    .line 10
    invoke-virtual {p1, p2}, Lcom/twitter/sdk/android/core/c;->c(Lcom/twitter/sdk/android/core/y;)V

    goto :goto_5b

    .line 11
    :cond_51
    new-instance p2, Lcom/twitter/sdk/android/core/s;

    const-string p3, "Authorize failed."

    invoke-direct {p2, p3}, Lcom/twitter/sdk/android/core/s;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/twitter/sdk/android/core/c;->c(Lcom/twitter/sdk/android/core/y;)V

    :cond_5b
    :goto_5b
    const/4 p1, 0x1

    return p1
.end method
