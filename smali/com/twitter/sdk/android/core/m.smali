###### Class com.twitter.sdk.android.core.m (com.twitter.sdk.android.core.m)
.class public Lcom/twitter/sdk/android/core/m;
.super Ljava/lang/Object;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/twitter/sdk/android/core/a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/twitter/sdk/android/core/a;
    .annotation runtime Lb7/c;
        value = "auth_token"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final b:J
    .annotation runtime Lb7/c;
        value = "id"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/twitter/sdk/android/core/a;J)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_a

    .line 2
    iput-object p1, p0, Lcom/twitter/sdk/android/core/m;->a:Lcom/twitter/sdk/android/core/a;

    .line 3
    iput-wide p2, p0, Lcom/twitter/sdk/android/core/m;->b:J

    return-void

    .line 4
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "AuthToken must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a()Lcom/twitter/sdk/android/core/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/m;->a:Lcom/twitter/sdk/android/core/a;

    return-object v0
.end method

.method public b()J
    .registers 3

    .line 1
    iget-wide v0, p0, Lcom/twitter/sdk/android/core/m;->b:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2d

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2d

    .line 2
    :cond_12
    check-cast p1, Lcom/twitter/sdk/android/core/m;

    .line 3
    iget-wide v2, p0, Lcom/twitter/sdk/android/core/m;->b:J

    iget-wide v4, p1, Lcom/twitter/sdk/android/core/m;->b:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1d

    return v1

    .line 4
    :cond_1d
    iget-object v2, p0, Lcom/twitter/sdk/android/core/m;->a:Lcom/twitter/sdk/android/core/a;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/m;->a:Lcom/twitter/sdk/android/core/a;

    if-eqz v2, :cond_28

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2c

    :cond_28
    if-nez p1, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    return v0

    :cond_2d
    :goto_2d
    return v1
.end method

.method public hashCode()I
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/m;->a:Lcom/twitter/sdk/android/core/a;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-wide v1, p0, Lcom/twitter/sdk/android/core/m;->b:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method
