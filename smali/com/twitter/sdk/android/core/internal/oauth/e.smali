###### Class com.twitter.sdk.android.core.internal.oauth.e (com.twitter.sdk.android.core.internal.oauth.e)
.class public Lcom/twitter/sdk/android/core/internal/oauth/e;
.super Lcom/twitter/sdk/android/core/a;
.source "OAuth2Token.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/twitter/sdk/android/core/internal/oauth/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final p:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "token_type"
    .end annotation
.end field

.field private final q:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "access_token"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/twitter/sdk/android/core/internal/oauth/e$a;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/internal/oauth/e$a;-><init>()V

    sput-object v0, Lcom/twitter/sdk/android/core/internal/oauth/e;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 5
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/a;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/e;->p:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/oauth/e;->q:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/twitter/sdk/android/core/internal/oauth/e$a;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/core/internal/oauth/e;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Lcom/twitter/sdk/android/core/a;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/oauth/e;->p:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/oauth/e;->q:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_37

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_37

    .line 2
    :cond_12
    check-cast p1, Lcom/twitter/sdk/android/core/internal/oauth/e;

    .line 3
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/oauth/e;->q:Ljava/lang/String;

    if-eqz v2, :cond_21

    iget-object v3, p1, Lcom/twitter/sdk/android/core/internal/oauth/e;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    goto :goto_25

    :cond_21
    iget-object v2, p1, Lcom/twitter/sdk/android/core/internal/oauth/e;->q:Ljava/lang/String;

    if-eqz v2, :cond_26

    :goto_25
    return v1

    .line 4
    :cond_26
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/oauth/e;->p:Ljava/lang/String;

    iget-object p1, p1, Lcom/twitter/sdk/android/core/internal/oauth/e;->p:Ljava/lang/String;

    if-eqz v2, :cond_33

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_36

    goto :goto_35

    :cond_33
    if-eqz p1, :cond_36

    :goto_35
    return v1

    :cond_36
    return v0

    :cond_37
    :goto_37
    return v1
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/e;->q:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/e;->p:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, Lcom/twitter/sdk/android/core/internal/oauth/e;->q:Ljava/lang/String;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_15
    add-int/2addr v0, v1

    return v0
.end method

.method public t()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/e;->p:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    iget-object p2, p0, Lcom/twitter/sdk/android/core/internal/oauth/e;->p:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/twitter/sdk/android/core/internal/oauth/e;->q:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

###### Class com.twitter.sdk.android.core.internal.oauth.e.a (com.twitter.sdk.android.core.internal.oauth.e$a)
.class final Lcom/twitter/sdk/android/core/internal/oauth/e$a;
.super Ljava/lang/Object;
.source "OAuth2Token.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/internal/oauth/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/twitter/sdk/android/core/internal/oauth/e;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/twitter/sdk/android/core/internal/oauth/e;
    .registers 4

    .line 1
    new-instance v0, Lcom/twitter/sdk/android/core/internal/oauth/e;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/twitter/sdk/android/core/internal/oauth/e;-><init>(Landroid/os/Parcel;Lcom/twitter/sdk/android/core/internal/oauth/e$a;)V

    return-object v0
.end method

.method public b(I)[Lcom/twitter/sdk/android/core/internal/oauth/e;
    .registers 2

    .line 1
    new-array p1, p1, [Lcom/twitter/sdk/android/core/internal/oauth/e;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/internal/oauth/e$a;->a(Landroid/os/Parcel;)Lcom/twitter/sdk/android/core/internal/oauth/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/internal/oauth/e$a;->b(I)[Lcom/twitter/sdk/android/core/internal/oauth/e;

    move-result-object p1

    return-object p1
.end method
