###### Class com.twitter.sdk.android.core.internal.oauth.f (com.twitter.sdk.android.core.internal.oauth.f)
.class public Lcom/twitter/sdk/android/core/internal/oauth/f;
.super Ljava/lang/Object;
.source "OAuthResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/twitter/sdk/android/core/internal/oauth/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final o:Lcom/twitter/sdk/android/core/t;

.field public final p:Ljava/lang/String;

.field public final q:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/twitter/sdk/android/core/internal/oauth/f$a;

    invoke-direct {v0}, Lcom/twitter/sdk/android/core/internal/oauth/f$a;-><init>()V

    sput-object v0, Lcom/twitter/sdk/android/core/internal/oauth/f;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-class v0, Lcom/twitter/sdk/android/core/t;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/t;

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/f;->o:Lcom/twitter/sdk/android/core/t;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/f;->p:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/f;->q:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/twitter/sdk/android/core/internal/oauth/f$a;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/core/internal/oauth/f;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/twitter/sdk/android/core/t;Ljava/lang/String;J)V
    .registers 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/twitter/sdk/android/core/internal/oauth/f;->o:Lcom/twitter/sdk/android/core/t;

    .line 4
    iput-object p2, p0, Lcom/twitter/sdk/android/core/internal/oauth/f;->p:Ljava/lang/String;

    .line 5
    iput-wide p3, p0, Lcom/twitter/sdk/android/core/internal/oauth/f;->q:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "authToken="

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/oauth/f;->o:Lcom/twitter/sdk/android/core/t;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",userName="

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/twitter/sdk/android/core/internal/oauth/f;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",userId="

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/twitter/sdk/android/core/internal/oauth/f;->q:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/f;->o:Lcom/twitter/sdk/android/core/t;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2
    iget-object p2, p0, Lcom/twitter/sdk/android/core/internal/oauth/f;->p:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-wide v0, p0, Lcom/twitter/sdk/android/core/internal/oauth/f;->q:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

###### Class com.twitter.sdk.android.core.internal.oauth.f.a (com.twitter.sdk.android.core.internal.oauth.f$a)
.class final Lcom/twitter/sdk/android/core/internal/oauth/f$a;
.super Ljava/lang/Object;
.source "OAuthResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/internal/oauth/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/twitter/sdk/android/core/internal/oauth/f;",
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
.method public a(Landroid/os/Parcel;)Lcom/twitter/sdk/android/core/internal/oauth/f;
    .registers 4

    .line 1
    new-instance v0, Lcom/twitter/sdk/android/core/internal/oauth/f;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/twitter/sdk/android/core/internal/oauth/f;-><init>(Landroid/os/Parcel;Lcom/twitter/sdk/android/core/internal/oauth/f$a;)V

    return-object v0
.end method

.method public b(I)[Lcom/twitter/sdk/android/core/internal/oauth/f;
    .registers 2

    .line 1
    new-array p1, p1, [Lcom/twitter/sdk/android/core/internal/oauth/f;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/internal/oauth/f$a;->a(Landroid/os/Parcel;)Lcom/twitter/sdk/android/core/internal/oauth/f;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/twitter/sdk/android/core/internal/oauth/f$a;->b(I)[Lcom/twitter/sdk/android/core/internal/oauth/f;

    move-result-object p1

    return-object p1
.end method
