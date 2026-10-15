###### Class com.google.android.gms.cloudmessaging.zza (com.google.android.gms.cloudmessaging.zza)
.class public Lcom/google/android/gms/cloudmessaging/zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cloud-messaging@@16.0.0"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cloudmessaging/zza$zza;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cloudmessaging/zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private o:Landroid/os/Messenger;

.field private p:Lcom/google/android/gms/cloudmessaging/IMessengerCompat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/cloudmessaging/a;

    invoke-direct {v0}, Lcom/google/android/gms/cloudmessaging/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/cloudmessaging/zza;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_11

    .line 3
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p1}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/google/android/gms/cloudmessaging/zza;->o:Landroid/os/Messenger;

    return-void

    .line 4
    :cond_11
    new-instance v0, Lcom/google/android/gms/cloudmessaging/IMessengerCompat$Proxy;

    invoke-direct {v0, p1}, Lcom/google/android/gms/cloudmessaging/IMessengerCompat$Proxy;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/google/android/gms/cloudmessaging/zza;->p:Lcom/google/android/gms/cloudmessaging/IMessengerCompat;

    return-void
.end method

.method private final h()Landroid/os/IBinder;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/zza;->o:Landroid/os/Messenger;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/zza;->p:Lcom/google/android/gms/cloudmessaging/IMessengerCompat;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1
    :cond_4
    :try_start_4
    invoke-direct {p0}, Lcom/google/android/gms/cloudmessaging/zza;->h()Landroid/os/IBinder;

    move-result-object v1

    check-cast p1, Lcom/google/android/gms/cloudmessaging/zza;

    invoke-direct {p1}, Lcom/google/android/gms/cloudmessaging/zza;->h()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_12
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_12} :catch_13

    return p1

    :catch_13
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/cloudmessaging/zza;->h()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final t(Landroid/os/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/zza;->o:Landroid/os/Messenger;

    if-eqz v0, :cond_8

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    return-void

    .line 3
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/cloudmessaging/zza;->p:Lcom/google/android/gms/cloudmessaging/IMessengerCompat;

    invoke-interface {v0, p1}, Lcom/google/android/gms/cloudmessaging/IMessengerCompat;->U2(Landroid/os/Message;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/cloudmessaging/zza;->o:Landroid/os/Messenger;

    if-eqz p2, :cond_c

    .line 2
    invoke-virtual {p2}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void

    .line 3
    :cond_c
    iget-object p2, p0, Lcom/google/android/gms/cloudmessaging/zza;->p:Lcom/google/android/gms/cloudmessaging/IMessengerCompat;

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method

###### Class com.google.android.gms.cloudmessaging.zza.C0105zza (com.google.android.gms.cloudmessaging.zza$zza)
.class public final Lcom/google/android/gms/cloudmessaging/zza$zza;
.super Ljava/lang/ClassLoader;
.source "com.google.android.gms:play-services-cloud-messaging@@16.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cloudmessaging/zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    return-void
.end method


# virtual methods
.method protected final loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const-string v0, "com.google.android.gms.iid.MessengerCompat"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string p1, "CloudMessengerCompat"

    const/4 p2, 0x3

    .line 2
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_20

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1e

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 p2, 0x0

    goto :goto_21

    :cond_20
    :goto_20
    const/4 p2, 0x1

    :goto_21
    if-eqz p2, :cond_28

    const-string p2, "Using renamed FirebaseIidMessengerCompat class"

    .line 4
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_28
    const-class p1, Lcom/google/android/gms/cloudmessaging/zza;

    return-object p1

    .line 6
    :cond_2b
    invoke-super {p0, p1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
