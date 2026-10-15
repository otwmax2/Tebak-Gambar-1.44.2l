###### Class com.google.android.gms.games.multiplayer.realtime.a (com.google.android.gms.games.multiplayer.realtime.a)
.class final Lcom/google/android/gms/games/multiplayer/realtime/a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/games/multiplayer/realtime/zzb;",
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
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1
    new-instance p1, Lcom/google/android/gms/games/multiplayer/realtime/zzb;

    invoke-direct {p1}, Lcom/google/android/gms/games/multiplayer/realtime/zzb;-><init>()V

    return-object p1
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1
    new-array p1, p1, [Lcom/google/android/gms/games/multiplayer/realtime/zzb;

    return-object p1
.end method
