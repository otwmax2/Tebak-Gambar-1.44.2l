###### Class b9.e (b9.e)
.class public Lb9/e;
.super Ljava/lang/Object;
.source "TwitterAuthClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb9/e$b;,
        Lb9/e$a;
    }
.end annotation


# instance fields
.field final a:Lcom/twitter/sdk/android/core/x;

.field final b:Lb9/b;

.field final c:Lcom/twitter/sdk/android/core/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/n<",
            "Lcom/twitter/sdk/android/core/a0;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lcom/twitter/sdk/android/core/r;


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 1
    invoke-static {}, Lcom/twitter/sdk/android/core/x;->h()Lcom/twitter/sdk/android/core/x;

    move-result-object v0

    invoke-static {}, Lcom/twitter/sdk/android/core/x;->h()Lcom/twitter/sdk/android/core/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/sdk/android/core/x;->e()Lcom/twitter/sdk/android/core/r;

    move-result-object v1

    .line 2
    invoke-static {}, Lcom/twitter/sdk/android/core/x;->h()Lcom/twitter/sdk/android/core/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/x;->i()Lcom/twitter/sdk/android/core/n;

    move-result-object v2

    invoke-static {}, Lb9/e$a;->a()Lb9/b;

    move-result-object v3

    .line 3
    invoke-direct {p0, v0, v1, v2, v3}, Lb9/e;-><init>(Lcom/twitter/sdk/android/core/x;Lcom/twitter/sdk/android/core/r;Lcom/twitter/sdk/android/core/n;Lb9/b;)V

    return-void
.end method

.method constructor <init>(Lcom/twitter/sdk/android/core/x;Lcom/twitter/sdk/android/core/r;Lcom/twitter/sdk/android/core/n;Lb9/b;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/x;",
            "Lcom/twitter/sdk/android/core/r;",
            "Lcom/twitter/sdk/android/core/n<",
            "Lcom/twitter/sdk/android/core/a0;",
            ">;",
            "Lb9/b;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lb9/e;->a:Lcom/twitter/sdk/android/core/x;

    .line 6
    iput-object p4, p0, Lb9/e;->b:Lb9/b;

    .line 7
    iput-object p2, p0, Lb9/e;->d:Lcom/twitter/sdk/android/core/r;

    .line 8
    iput-object p3, p0, Lb9/e;->c:Lcom/twitter/sdk/android/core/n;

    return-void
.end method

.method private b(Landroid/app/Activity;Lb9/e$b;)Z
    .registers 7

    .line 1
    invoke-static {}, Lcom/twitter/sdk/android/core/o;->g()Lcom/twitter/sdk/android/core/h;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Using OAuth"

    invoke-interface {v0, v1, v2}, Lcom/twitter/sdk/android/core/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lb9/e;->b:Lb9/b;

    new-instance v1, Lb9/c;

    iget-object v2, p0, Lb9/e;->d:Lcom/twitter/sdk/android/core/r;

    .line 3
    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/r;->v()I

    move-result v3

    invoke-direct {v1, v2, p2, v3}, Lb9/c;-><init>(Lcom/twitter/sdk/android/core/r;Lcom/twitter/sdk/android/core/c;I)V

    .line 4
    invoke-virtual {v0, p1, v1}, Lb9/b;->a(Landroid/app/Activity;Lb9/a;)Z

    move-result p1

    return p1
.end method

.method private c(Landroid/app/Activity;Lb9/e$b;)Z
    .registers 7

    .line 1
    invoke-static {p1}, Lb9/d;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2
    invoke-static {}, Lcom/twitter/sdk/android/core/o;->g()Lcom/twitter/sdk/android/core/h;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Using SSO"

    invoke-interface {v0, v1, v2}, Lcom/twitter/sdk/android/core/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lb9/e;->b:Lb9/b;

    new-instance v1, Lb9/d;

    iget-object v2, p0, Lb9/e;->d:Lcom/twitter/sdk/android/core/r;

    .line 4
    invoke-virtual {v2}, Lcom/twitter/sdk/android/core/r;->v()I

    move-result v3

    invoke-direct {v1, v2, p2, v3}, Lb9/d;-><init>(Lcom/twitter/sdk/android/core/r;Lcom/twitter/sdk/android/core/c;I)V

    .line 5
    invoke-virtual {v0, p1, v1}, Lb9/b;->a(Landroid/app/Activity;Lb9/a;)Z

    move-result p1

    return p1

    :cond_23
    const/4 p1, 0x0

    return p1
.end method

.method private e(Landroid/app/Activity;Lcom/twitter/sdk/android/core/c;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/twitter/sdk/android/core/c<",
            "Lcom/twitter/sdk/android/core/a0;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lb9/e$b;

    iget-object v1, p0, Lb9/e;->c:Lcom/twitter/sdk/android/core/n;

    invoke-direct {v0, v1, p2}, Lb9/e$b;-><init>(Lcom/twitter/sdk/android/core/n;Lcom/twitter/sdk/android/core/c;)V

    .line 2
    invoke-direct {p0, p1, v0}, Lb9/e;->c(Landroid/app/Activity;Lb9/e$b;)Z

    move-result p2

    if-nez p2, :cond_1d

    .line 3
    invoke-direct {p0, p1, v0}, Lb9/e;->b(Landroid/app/Activity;Lb9/e$b;)Z

    move-result p1

    if-nez p1, :cond_1d

    .line 4
    new-instance p1, Lcom/twitter/sdk/android/core/s;

    const-string p2, "Authorize failed."

    invoke-direct {p1, p2}, Lcom/twitter/sdk/android/core/s;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lb9/e$b;->c(Lcom/twitter/sdk/android/core/y;)V

    :cond_1d
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/twitter/sdk/android/core/c;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/twitter/sdk/android/core/c<",
            "Lcom/twitter/sdk/android/core/a0;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_23

    if-eqz p2, :cond_1b

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 2
    invoke-static {}, Lcom/twitter/sdk/android/core/o;->g()Lcom/twitter/sdk/android/core/h;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "Twitter"

    const-string v1, "Cannot authorize, activity is finishing."

    .line 3
    invoke-interface {p1, v0, v1, p2}, Lcom/twitter/sdk/android/core/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a

    .line 4
    :cond_17
    invoke-direct {p0, p1, p2}, Lb9/e;->e(Landroid/app/Activity;Lcom/twitter/sdk/android/core/c;)V

    :goto_1a
    return-void

    .line 5
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Callback must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_23
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Activity must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d()V
    .registers 2

    .line 1
    iget-object v0, p0, Lb9/e;->b:Lb9/b;

    invoke-virtual {v0}, Lb9/b;->b()V

    return-void
.end method

.method public f(IILandroid/content/Intent;)V
    .registers 7

    .line 1
    invoke-static {}, Lcom/twitter/sdk/android/core/o;->g()Lcom/twitter/sdk/android/core/h;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult called with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Twitter"

    invoke-interface {v0, v2, v1}, Lcom/twitter/sdk/android/core/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lb9/e;->b:Lb9/b;

    invoke-virtual {v0}, Lb9/b;->d()Z

    move-result v0

    if-nez v0, :cond_35

    .line 3
    invoke-static {}, Lcom/twitter/sdk/android/core/o;->g()Lcom/twitter/sdk/android/core/h;

    move-result-object p1

    const/4 p2, 0x0

    const-string p3, "Authorize not in progress"

    invoke-interface {p1, v2, p3, p2}, Lcom/twitter/sdk/android/core/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_48

    .line 4
    :cond_35
    iget-object v0, p0, Lb9/e;->b:Lb9/b;

    invoke-virtual {v0}, Lb9/b;->c()Lb9/a;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lb9/a;->d(IILandroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 6
    iget-object p1, p0, Lb9/e;->b:Lb9/b;

    invoke-virtual {p1}, Lb9/b;->b()V

    :cond_48
    :goto_48
    return-void
.end method

###### Class b9.e.a (b9.e$a)
.class Lb9/e$a;
.super Ljava/lang/Object;
.source "TwitterAuthClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb9/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lb9/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lb9/b;

    invoke-direct {v0}, Lb9/b;-><init>()V

    sput-object v0, Lb9/e$a;->a:Lb9/b;

    return-void
.end method

.method static synthetic a()Lb9/b;
    .registers 1

    .line 1
    sget-object v0, Lb9/e$a;->a:Lb9/b;

    return-object v0
.end method

###### Class b9.e.b (b9.e$b)
.class Lb9/e$b;
.super Lcom/twitter/sdk/android/core/c;
.source "TwitterAuthClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb9/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/c<",
        "Lcom/twitter/sdk/android/core/a0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/sdk/android/core/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/n<",
            "Lcom/twitter/sdk/android/core/a0;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/twitter/sdk/android/core/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/sdk/android/core/c<",
            "Lcom/twitter/sdk/android/core/a0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/n;Lcom/twitter/sdk/android/core/c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/n<",
            "Lcom/twitter/sdk/android/core/a0;",
            ">;",
            "Lcom/twitter/sdk/android/core/c<",
            "Lcom/twitter/sdk/android/core/a0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/c;-><init>()V

    .line 2
    iput-object p1, p0, Lb9/e$b;->a:Lcom/twitter/sdk/android/core/n;

    .line 3
    iput-object p2, p0, Lb9/e$b;->b:Lcom/twitter/sdk/android/core/c;

    return-void
.end method


# virtual methods
.method public c(Lcom/twitter/sdk/android/core/y;)V
    .registers 5

    .line 1
    invoke-static {}, Lcom/twitter/sdk/android/core/o;->g()Lcom/twitter/sdk/android/core/h;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Authorization completed with an error"

    invoke-interface {v0, v1, v2, p1}, Lcom/twitter/sdk/android/core/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lb9/e$b;->b:Lcom/twitter/sdk/android/core/c;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/c;->c(Lcom/twitter/sdk/android/core/y;)V

    return-void
.end method

.method public d(Lcom/twitter/sdk/android/core/l;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/l<",
            "Lcom/twitter/sdk/android/core/a0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/twitter/sdk/android/core/o;->g()Lcom/twitter/sdk/android/core/h;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Authorization completed successfully"

    invoke-interface {v0, v1, v2}, Lcom/twitter/sdk/android/core/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lb9/e$b;->a:Lcom/twitter/sdk/android/core/n;

    iget-object v1, p1, Lcom/twitter/sdk/android/core/l;->a:Ljava/lang/Object;

    check-cast v1, Lcom/twitter/sdk/android/core/m;

    invoke-interface {v0, v1}, Lcom/twitter/sdk/android/core/n;->d(Lcom/twitter/sdk/android/core/m;)V

    .line 3
    iget-object v0, p0, Lb9/e$b;->b:Lcom/twitter/sdk/android/core/c;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/core/c;->d(Lcom/twitter/sdk/android/core/l;)V

    return-void
.end method
