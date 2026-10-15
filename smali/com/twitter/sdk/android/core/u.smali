###### Class com.twitter.sdk.android.core.u (com.twitter.sdk.android.core.u)
.class public Lcom/twitter/sdk/android/core/u;
.super Ljava/lang/Object;
.source "TwitterConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/u$b;
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Lcom/twitter/sdk/android/core/h;

.field final c:Lcom/twitter/sdk/android/core/r;

.field final d:Ljava/util/concurrent/ExecutorService;

.field final e:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/h;Lcom/twitter/sdk/android/core/r;Ljava/util/concurrent/ExecutorService;Ljava/lang/Boolean;)V
    .registers 6

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/twitter/sdk/android/core/u;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/twitter/sdk/android/core/u;->b:Lcom/twitter/sdk/android/core/h;

    .line 5
    iput-object p3, p0, Lcom/twitter/sdk/android/core/u;->c:Lcom/twitter/sdk/android/core/r;

    .line 6
    iput-object p4, p0, Lcom/twitter/sdk/android/core/u;->d:Ljava/util/concurrent/ExecutorService;

    .line 7
    iput-object p5, p0, Lcom/twitter/sdk/android/core/u;->e:Ljava/lang/Boolean;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/h;Lcom/twitter/sdk/android/core/r;Ljava/util/concurrent/ExecutorService;Ljava/lang/Boolean;Lcom/twitter/sdk/android/core/u$a;)V
    .registers 7

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/twitter/sdk/android/core/u;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/h;Lcom/twitter/sdk/android/core/r;Ljava/util/concurrent/ExecutorService;Ljava/lang/Boolean;)V

    return-void
.end method

###### Class com.twitter.sdk.android.core.u.a (com.twitter.sdk.android.core.u$a)
.class synthetic Lcom/twitter/sdk/android/core/u$a;
.super Ljava/lang/Object;
.source "TwitterConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.twitter.sdk.android.core.u.b (com.twitter.sdk.android.core.u$b)
.class public Lcom/twitter/sdk/android/core/u$b;
.super Ljava/lang/Object;
.source "TwitterConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/twitter/sdk/android/core/h;

.field private c:Lcom/twitter/sdk/android/core/r;

.field private d:Ljava/util/concurrent/ExecutorService;

.field private e:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_c

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/twitter/sdk/android/core/u$b;->a:Landroid/content/Context;

    return-void

    .line 3
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Context must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lcom/twitter/sdk/android/core/u;
    .registers 9

    .line 1
    new-instance v7, Lcom/twitter/sdk/android/core/u;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/u$b;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/u$b;->b:Lcom/twitter/sdk/android/core/h;

    iget-object v3, p0, Lcom/twitter/sdk/android/core/u$b;->c:Lcom/twitter/sdk/android/core/r;

    iget-object v4, p0, Lcom/twitter/sdk/android/core/u$b;->d:Ljava/util/concurrent/ExecutorService;

    iget-object v5, p0, Lcom/twitter/sdk/android/core/u$b;->e:Ljava/lang/Boolean;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/twitter/sdk/android/core/u;-><init>(Landroid/content/Context;Lcom/twitter/sdk/android/core/h;Lcom/twitter/sdk/android/core/r;Ljava/util/concurrent/ExecutorService;Ljava/lang/Boolean;Lcom/twitter/sdk/android/core/u$a;)V

    return-object v7
.end method

.method public b(Z)Lcom/twitter/sdk/android/core/u$b;
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/twitter/sdk/android/core/u$b;->e:Ljava/lang/Boolean;

    return-object p0
.end method

.method public c(Lcom/twitter/sdk/android/core/r;)Lcom/twitter/sdk/android/core/u$b;
    .registers 3

    if-eqz p1, :cond_5

    .line 1
    iput-object p1, p0, Lcom/twitter/sdk/android/core/u$b;->c:Lcom/twitter/sdk/android/core/r;

    return-object p0

    .line 2
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "TwitterAuthConfig must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
