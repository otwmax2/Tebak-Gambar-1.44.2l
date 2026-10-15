###### Class com.tebakgambar.model.request.SocialLoginData (com.tebakgambar.model.request.SocialLoginData)
.class public Lcom/tebakgambar/model/request/SocialLoginData;
.super Ljava/lang/Object;
.source "SocialLoginData.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/tebakgambar/model/request/RequestData;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tebakgambar/model/request/SocialLoginData;",
            ">;"
        }
    .end annotation
.end field

.field public static final SOCIAL_MEDIA_TYPE_FACEBOOK:I = 0x1

.field public static final SOCIAL_MEDIA_TYPE_LINE:I = 0x3

.field public static final SOCIAL_MEDIA_TYPE_TWITTER:I = 0x2


# instance fields
.field public birthDate:Ljava/util/Date;

.field public email:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "email"
    .end annotation
.end field

.field public fullName:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "full_name"
    .end annotation
.end field

.field public gender:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "image_url"
    .end annotation
.end field

.field public imei:Ljava/lang/String;

.field public phoneNumber:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "phone_number"
    .end annotation
.end field

.field public socialClientId:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "social_client_id"
    .end annotation
.end field

.field public socialType:I
    .annotation runtime Lb7/c;
        value = "social_type"
    .end annotation
.end field

.field public userToken:Ljava/lang/String;
    .annotation runtime Lb7/c;
        value = "user_token"
    .end annotation
.end field

.field public username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/tebakgambar/model/request/SocialLoginData$1;

    invoke-direct {v0}, Lcom/tebakgambar/model/request/SocialLoginData$1;-><init>()V

    sput-object v0, Lcom/tebakgambar/model/request/SocialLoginData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/model/request/SocialLoginData;->socialClientId:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/model/request/SocialLoginData;->username:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/model/request/SocialLoginData;->userToken:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/model/request/SocialLoginData;->fullName:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/model/request/SocialLoginData;->email:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/model/request/SocialLoginData;->imageUrl:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/model/request/SocialLoginData;->phoneNumber:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tebakgambar/model/request/SocialLoginData;->gender:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tebakgambar/model/request/SocialLoginData;->socialType:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tebakgambar/model/request/SocialLoginData;->imei:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/tebakgambar/model/request/SocialLoginData;->imei:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toFieldMap()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/tebakgambar/model/LocalUserData;->getInstance()Lcom/tebakgambar/model/LocalUserData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/model/LocalUserData;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2
    invoke-static {}, Lcom/tebakgambar/model/LocalUserData;->getInstance()Lcom/tebakgambar/model/LocalUserData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tebakgambar/model/LocalUserData;->getSyncToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 3
    :goto_14
    new-instance v1, Ly8/l;

    invoke-direct {v1}, Ly8/l;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/tebakgambar/model/request/SocialLoginData;->socialClientId:Ljava/lang/String;

    const-string v3, "social_client_id"

    const-string v4, ""

    invoke-virtual {v1, v3, v2, v4}, Ly8/l;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v2, p0, Lcom/tebakgambar/model/request/SocialLoginData;->username:Ljava/lang/String;

    const-string v3, "username"

    invoke-virtual {v1, v3, v2, v4}, Ly8/l;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v2, p0, Lcom/tebakgambar/model/request/SocialLoginData;->userToken:Ljava/lang/String;

    const-string v3, "user_token"

    invoke-virtual {v1, v3, v2, v4}, Ly8/l;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v2, p0, Lcom/tebakgambar/model/request/SocialLoginData;->fullName:Ljava/lang/String;

    const-string v3, "full_name"

    invoke-virtual {v1, v3, v2, v4}, Ly8/l;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v2, p0, Lcom/tebakgambar/model/request/SocialLoginData;->email:Ljava/lang/String;

    const-string v3, "email"

    invoke-virtual {v1, v3, v2, v4}, Ly8/l;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v2, p0, Lcom/tebakgambar/model/request/SocialLoginData;->imageUrl:Ljava/lang/String;

    const-string v3, "image_url"

    invoke-virtual {v1, v3, v2, v4}, Ly8/l;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v2, p0, Lcom/tebakgambar/model/request/SocialLoginData;->phoneNumber:Ljava/lang/String;

    const-string v3, "phone_number"

    invoke-virtual {v1, v3, v2, v4}, Ly8/l;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v2, p0, Lcom/tebakgambar/model/request/SocialLoginData;->gender:Ljava/lang/String;

    const-string v3, "gender"

    invoke-virtual {v1, v3, v2, v4}, Ly8/l;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget v2, p0, Lcom/tebakgambar/model/request/SocialLoginData;->socialType:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "social_type"

    invoke-virtual {v1, v3, v2, v4}, Ly8/l;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v2, p0, Lcom/tebakgambar/model/request/SocialLoginData;->imei:Ljava/lang/String;

    const-string v3, "imei"

    invoke-virtual {v1, v3, v2, v4}, Ly8/l;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sync_token"

    .line 14
    invoke-virtual {v1, v2, v0}, Ly8/l;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    iget-object p2, p0, Lcom/tebakgambar/model/request/SocialLoginData;->socialClientId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/tebakgambar/model/request/SocialLoginData;->username:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/tebakgambar/model/request/SocialLoginData;->userToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/tebakgambar/model/request/SocialLoginData;->fullName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/tebakgambar/model/request/SocialLoginData;->email:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/tebakgambar/model/request/SocialLoginData;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/tebakgambar/model/request/SocialLoginData;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/tebakgambar/model/request/SocialLoginData;->gender:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget p2, p0, Lcom/tebakgambar/model/request/SocialLoginData;->socialType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget-object p2, p0, Lcom/tebakgambar/model/request/SocialLoginData;->imei:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

###### Class com.tebakgambar.model.request.SocialLoginData.AnonymousClass1 (com.tebakgambar.model.request.SocialLoginData$1)
.class Lcom/tebakgambar/model/request/SocialLoginData$1;
.super Ljava/lang/Object;
.source "SocialLoginData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tebakgambar/model/request/SocialLoginData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/tebakgambar/model/request/SocialLoginData;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/tebakgambar/model/request/SocialLoginData;
    .registers 3

    .line 2
    new-instance v0, Lcom/tebakgambar/model/request/SocialLoginData;

    invoke-direct {v0, p1}, Lcom/tebakgambar/model/request/SocialLoginData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/tebakgambar/model/request/SocialLoginData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/tebakgambar/model/request/SocialLoginData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/tebakgambar/model/request/SocialLoginData;
    .registers 2

    .line 2
    new-array p1, p1, [Lcom/tebakgambar/model/request/SocialLoginData;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/tebakgambar/model/request/SocialLoginData$1;->newArray(I)[Lcom/tebakgambar/model/request/SocialLoginData;

    move-result-object p1

    return-object p1
.end method
