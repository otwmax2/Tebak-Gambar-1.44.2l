###### Class com.twitter.sdk.android.core.a0 (com.twitter.sdk.android.core.a0)
.class public Lcom/twitter/sdk/android/core/a0;
.super Lcom/twitter/sdk/android/core/m;
.source "TwitterSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/core/a0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/m<",
        "Lcom/twitter/sdk/android/core/t;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "user_name"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/t;JLjava/lang/String;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/sdk/android/core/m;-><init>(Lcom/twitter/sdk/android/core/a;J)V

    .line 2
    iput-object p4, p0, Lcom/twitter/sdk/android/core/a0;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/a0;->c:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2b

    .line 2
    :cond_12
    invoke-super {p0, p1}, Lcom/twitter/sdk/android/core/m;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    return v1

    .line 3
    :cond_19
    check-cast p1, Lcom/twitter/sdk/android/core/a0;

    .line 4
    iget-object v2, p0, Lcom/twitter/sdk/android/core/a0;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/a0;->c:Ljava/lang/String;

    if-eqz v2, :cond_26

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2a

    :cond_26
    if-nez p1, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    return v0

    :cond_2b
    :goto_2b
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 1
    invoke-super {p0}, Lcom/twitter/sdk/android/core/m;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/twitter/sdk/android/core/a0;->c:Ljava/lang/String;

    if-eqz v1, :cond_f

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    add-int/2addr v0, v1

    return v0
.end method

###### Class com.twitter.sdk.android.core.a0.a (com.twitter.sdk.android.core.a0$a)
.class Lcom/twitter/sdk/android/core/a0$a;
.super Ljava/lang/Object;
.source "TwitterSession.java"

# interfaces
.implements Le9/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le9/d<",
        "Lcom/twitter/sdk/android/core/a0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/gson/f;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/gson/f;

    invoke-direct {v0}, Lcom/google/gson/f;-><init>()V

    iput-object v0, p0, Lcom/twitter/sdk/android/core/a0$a;->a:Lcom/google/gson/f;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/a0$a;->c(Ljava/lang/String;)Lcom/twitter/sdk/android/core/a0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 1
    check-cast p1, Lcom/twitter/sdk/android/core/a0;

    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/a0$a;->d(Lcom/twitter/sdk/android/core/a0;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)Lcom/twitter/sdk/android/core/a0;
    .registers 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 2
    :try_start_6
    iget-object v0, p0, Lcom/twitter/sdk/android/core/a0$a;->a:Lcom/google/gson/f;

    const-class v1, Lcom/twitter/sdk/android/core/a0;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/f;->k(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/twitter/sdk/android/core/a0;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_11

    return-object p1

    :catch_11
    move-exception p1

    .line 3
    invoke-static {}, Lcom/twitter/sdk/android/core/o;->g()Lcom/twitter/sdk/android/core/h;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Twitter"

    invoke-interface {v0, v1, p1}, Lcom/twitter/sdk/android/core/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Lcom/twitter/sdk/android/core/a0;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_1d

    .line 1
    invoke-virtual {p1}, Lcom/twitter/sdk/android/core/m;->a()Lcom/twitter/sdk/android/core/a;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 2
    :try_start_8
    iget-object v0, p0, Lcom/twitter/sdk/android/core/a0$a;->a:Lcom/google/gson/f;

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

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Twitter"

    invoke-interface {v0, v1, p1}, Lcom/twitter/sdk/android/core/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    const-string p1, ""

    return-object p1
.end method
