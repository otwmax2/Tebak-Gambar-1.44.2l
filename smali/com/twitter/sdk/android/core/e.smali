###### Class com.twitter.sdk.android.core.e (com.twitter.sdk.android.core.e)
.class public Lcom/twitter/sdk/android/core/e;
.super Lcom/twitter/sdk/android/core/m;
.source "GuestSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/m<",
        "Lcom/twitter/sdk/android/core/internal/oauth/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/internal/oauth/a;)V
    .registers 4

    const-wide/16 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/twitter/sdk/android/core/m;-><init>(Lcom/twitter/sdk/android/core/a;J)V

    return-void
.end method

###### Class com.twitter.sdk.android.core.e.a (com.twitter.sdk.android.core.e$a)
.class public Lcom/twitter/sdk/android/core/e$a;
.super Ljava/lang/Object;
.source "GuestSession.java"

# interfaces
.implements Le9/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le9/d<",
        "Lcom/twitter/sdk/android/core/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/gson/f;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/gson/g;

    invoke-direct {v0}, Lcom/google/gson/g;-><init>()V

    const-class v1, Lcom/twitter/sdk/android/core/internal/oauth/a;

    new-instance v2, Lcom/twitter/sdk/android/core/b;

    invoke-direct {v2}, Lcom/twitter/sdk/android/core/b;-><init>()V

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/g;->c(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/g;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/gson/g;->b()Lcom/google/gson/f;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/e$a;->a:Lcom/google/gson/f;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/e$a;->c(Ljava/lang/String;)Lcom/twitter/sdk/android/core/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 1
    check-cast p1, Lcom/twitter/sdk/android/core/e;

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/e$a;->d(Lcom/twitter/sdk/android/core/e;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)Lcom/twitter/sdk/android/core/e;
    .registers 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 2
    :try_start_6
    iget-object v0, p0, Lcom/twitter/sdk/android/core/e$a;->a:Lcom/google/gson/f;

    const-class v1, Lcom/twitter/sdk/android/core/e;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/f;->k(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/twitter/sdk/android/core/e;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_11

    return-object p1

    :catch_11
    move-exception p1

    .line 3
    invoke-static {}, Lcom/twitter/sdk/android/core/o;->g()Lcom/twitter/sdk/android/core/h;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to deserialize session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Twitter"

    .line 5
    invoke-interface {v0, v1, p1}, Lcom/twitter/sdk/android/core/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Lcom/twitter/sdk/android/core/e;)Ljava/lang/String;
    .registers 5

    if-eqz p1, :cond_2e

    .line 1
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/m;->a()Lcom/twitter/sdk/android/core/a;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 2
    :try_start_8
    iget-object v0, p0, Lcom/twitter/sdk/android/core/e$a;->a:Lcom/google/gson/f;

    invoke-virtual {v0, p1}, Lcom/google/gson/f;->t(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    return-object p1

    :catch_f
    move-exception p1

    .line 3
    invoke-static {}, Lcom/twitter/sdk/android/core/o;->g()Lcom/twitter/sdk/android/core/h;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to serialize session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Twitter"

    .line 5
    invoke-interface {v0, v1, p1}, Lcom/twitter/sdk/android/core/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    const-string p1, ""

    return-object p1
.end method
