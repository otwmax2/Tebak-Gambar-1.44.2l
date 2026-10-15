###### Class c9.k (c9.k)
.class public Lc9/k;
.super Ljava/lang/Object;
.source "TwitterSessionVerifier.java"

# interfaces
.implements Lc9/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc9/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc9/h<",
        "Lcom/twitter/sdk/android/core/a0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lc9/k$a;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    new-instance v0, Lc9/k$a;

    invoke-direct {v0}, Lc9/k$a;-><init>()V

    invoke-direct {p0, v0}, Lc9/k;-><init>(Lc9/k$a;)V

    return-void
.end method

.method constructor <init>(Lc9/k$a;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lc9/k;->a:Lc9/k$a;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/twitter/sdk/android/core/m;)V
    .registers 2

    .line 1
    check-cast p1, Lcom/twitter/sdk/android/core/a0;

    invoke-virtual {p0, p1}, Lc9/k;->b(Lcom/twitter/sdk/android/core/a0;)V

    return-void
.end method

.method public b(Lcom/twitter/sdk/android/core/a0;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lc9/k;->a:Lc9/k$a;

    invoke-virtual {v0, p1}, Lc9/k$a;->a(Lcom/twitter/sdk/android/core/a0;)Lcom/twitter/sdk/android/core/services/AccountService;

    move-result-object p1

    .line 2
    :try_start_6
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1, v1}, Lcom/twitter/sdk/android/core/services/AccountService;->verifyCredentials(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lwa/b;

    move-result-object p1

    invoke-interface {p1}, Lwa/b;->execute()Lwa/l;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_11} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_11} :catch_11

    :catch_11
    return-void
.end method

###### Class c9.k.a (c9.k$a)
.class public Lc9/k$a;
.super Ljava/lang/Object;
.source "TwitterSessionVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc9/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "a"
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/sdk/android/core/a0;)Lcom/twitter/sdk/android/core/services/AccountService;
    .registers 3

    .line 1
    new-instance v0, Lcom/twitter/sdk/android/core/p;

    invoke-direct {v0, p1}, Lcom/twitter/sdk/android/core/p;-><init>(Lcom/twitter/sdk/android/core/a0;)V

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/p;->d()Lcom/twitter/sdk/android/core/services/AccountService;

    move-result-object p1

    return-object p1
.end method
