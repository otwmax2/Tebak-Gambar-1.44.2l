###### Class com.google.android.gms.games.internal.zzaf (com.google.android.gms.games.internal.zzaf)
.class public final Lcom/google/android/gms/games/internal/zzaf;
.super Lcom/google/android/gms/internal/games/zzb;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/games/internal/zzac;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/games/zzb;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final A5()Landroid/content/Intent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x232b

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/games/zzb;->X0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 3
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/games/zzd;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final B2(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/games/zzd;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6
    invoke-static {v0, p5}, Lcom/google/android/gms/internal/games/zzd;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x13a1

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/games/zzb;->t1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final B5(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;IIIZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/games/zzd;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    invoke-static {v0, p6}, Lcom/google/android/gms/internal/games/zzd;->a(Landroid/os/Parcel;Z)V

    const/16 p1, 0x139b

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/games/zzb;->t1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final D2(Lcom/google/android/gms/games/internal/zzy;IZZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/games/zzd;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    invoke-static {v0, p3}, Lcom/google/android/gms/internal/games/zzd;->a(Landroid/os/Parcel;Z)V

    .line 5
    invoke-static {v0, p4}, Lcom/google/android/gms/internal/games/zzd;->a(Landroid/os/Parcel;Z)V

    const/16 p1, 0x1397

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/games/zzb;->t1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final G4(Lcom/google/android/gms/games/internal/zzy;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/games/zzd;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/games/zzd;->a(Landroid/os/Parcel;Z)V

    const/16 p1, 0x2ee2

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/games/zzb;->t1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final Ga(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object p2

    .line 2
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/games/zzd;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    invoke-virtual {p2, p5}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0x1f41

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/games/zzb;->t1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final H6(Lcom/google/android/gms/games/internal/zzy;Z[Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/games/zzd;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/games/zzd;->a(Landroid/os/Parcel;Z)V

    .line 4
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/16 p1, 0x2eff

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/games/zzb;->t1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final J3(Lcom/google/android/gms/games/internal/zzy;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/games/zzd;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/games/zzd;->a(Landroid/os/Parcel;Z)V

    const/16 p1, 0x2ef0

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/games/zzb;->t1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final Ja(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;Lcom/google/android/gms/drive/Contents;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/games/zzd;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    invoke-static {v0, p4}, Lcom/google/android/gms/internal/games/zzd;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 6
    invoke-static {v0, p5}, Lcom/google/android/gms/internal/games/zzd;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x2f01

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/games/zzb;->t1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final K6(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0x2ef1

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/games/zzb;->t1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final L2(Lcom/google/android/gms/games/PlayerEntity;)Landroid/content/Intent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/games/zzd;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x3c8f

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/games/zzb;->X0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 4
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/games/zzd;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method

.method public final M1(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;Lcom/google/android/gms/drive/Contents;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/games/zzd;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    invoke-static {v0, p3}, Lcom/google/android/gms/internal/games/zzd;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 5
    invoke-static {v0, p4}, Lcom/google/android/gms/internal/games/zzd;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x2ee7

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/games/zzb;->t1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final M7(Lcom/google/android/gms/games/internal/zzy;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/games/zzd;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0x560a

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/games/zzb;->t1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final Ma(Lcom/google/android/gms/games/internal/zzy;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/games/zzd;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x560c

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/games/zzb;->t1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final N0()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x2f04

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/games/zzb;->X0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1
.end method

.method public final N4(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/games/zzd;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    invoke-static {v0, p3}, Lcom/google/android/gms/internal/games/zzd;->a(Landroid/os/Parcel;Z)V

    const/16 p1, 0x32ce

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/games/zzb;->t1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final O3(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;JLjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/games/zzd;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 5
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 p1, 0x1b5a

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/games/zzb;->t1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final P5(Lcom/google/android/gms/games/internal/zzy;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/games/zzd;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/games/zzd;->a(Landroid/os/Parcel;Z)V

    const/16 p1, 0x1f5b

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/games/zzb;->t1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final Q6(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;IZZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/games/zzd;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-static {v0, p4}, Lcom/google/android/gms/internal/games/zzd;->a(Landroid/os/Parcel;Z)V

    .line 6
    invoke-static {v0, p5}, Lcom/google/android/gms/internal/games/zzd;->a(Landroid/os/Parcel;Z)V

    const/16 p1, 0x233c

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/games/zzb;->t1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final Q7(Lcom/google/android/gms/games/internal/zzy;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/games/zzd;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0x5600

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/games/zzb;->t1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final S5(Lcom/google/android/gms/games/internal/zzaa;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/games/zzd;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0x3c8d

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/games/zzb;->t1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final T5(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/games/zzd;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    invoke-static {v0, p3}, Lcom/google/android/gms/internal/games/zzd;->a(Landroid/os/Parcel;Z)V

    const/16 p1, 0x1968

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/games/zzb;->t1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final U()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x560e

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/games/zzb;->X0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/games/zzd;->e(Landroid/os/Parcel;)Z

    move-result v1

    .line 4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1
.end method

.method public final U1(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;IIIZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/games/zzd;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    invoke-static {v0, p6}, Lcom/google/android/gms/internal/games/zzd;->a(Landroid/os/Parcel;Z)V

    const/16 p1, 0x139c

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/games/zzb;->t1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final V4()Lcom/google/android/gms/common/data/DataHolder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x157e

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/games/zzb;->X0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/games/zzd;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/data/DataHolder;

    .line 4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final W(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0x560b

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/games/zzb;->t1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final X8()Landroid/content/Intent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x2332

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/games/zzb;->X0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 3
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/games/zzd;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final Y3(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/games/zzd;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6
    invoke-static {v0, p5}, Lcom/google/android/gms/internal/games/zzd;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x1b5b

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/games/zzb;->t1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a7()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x2f03

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/games/zzb;->X0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1
.end method

.method public final b7(Lcom/google/android/gms/drive/Contents;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/games/zzd;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x2ef3

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/games/zzb;->t1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final d1()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x1394

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/games/zzb;->X0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final ea(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/games/zzd;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5
    invoke-static {v0, p4}, Lcom/google/android/gms/internal/games/zzd;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x13a0

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/games/zzb;->t1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final f1(J)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    const/16 p1, 0x1389

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/games/zzb;->t1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final j3(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;ZI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/games/zzd;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    invoke-static {v0, p3}, Lcom/google/android/gms/internal/games/zzd;->a(Landroid/os/Parcel;Z)V

    .line 5
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0x3a99

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/games/zzb;->t1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final j5(Ljava/lang/String;ZZI)Landroid/content/Intent;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/games/zzd;->a(Landroid/os/Parcel;Z)V

    .line 4
    invoke-static {v0, p3}, Lcom/google/android/gms/internal/games/zzd;->a(Landroid/os/Parcel;Z)V

    .line 5
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0x2ee1

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/games/zzb;->X0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 7
    sget-object p2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/games/zzd;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final j6()Landroid/content/Intent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x2334

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/games/zzb;->X0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 3
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/games/zzd;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final k0()Landroid/app/PendingIntent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x61b7

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/games/zzb;->X0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 3
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/games/zzd;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final k3()Landroid/content/Intent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x232d

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/games/zzb;->X0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 3
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/games/zzd;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final k7(Lcom/google/android/gms/games/internal/zzy;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/games/zzd;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/games/zzd;->a(Landroid/os/Parcel;Z)V

    const/16 p1, 0x1967

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/games/zzb;->t1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final k9(Lcom/google/android/gms/games/internal/zzy;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/games/zzd;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x520f

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/games/zzb;->t1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final m1()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x138e

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/games/zzb;->t1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final m8()Lcom/google/android/gms/common/data/DataHolder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x1395

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/games/zzb;->X0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/games/zzd;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/data/DataHolder;

    .line 4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final na()Landroid/os/Bundle;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x138c

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/games/zzb;->X0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 3
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/games/zzd;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final o0()Landroid/content/Intent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x4a3a

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/games/zzb;->X0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 3
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/games/zzd;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final o2(Lcom/google/android/gms/games/internal/zzy;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/games/zzd;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/games/zzd;->a(Landroid/os/Parcel;Z)V

    const/16 p1, 0x4269

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/games/zzb;->t1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final oa(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/games/zzd;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5
    invoke-static {v0, p4}, Lcom/google/android/gms/internal/games/zzd;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x139f

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/games/zzb;->t1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final q8(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/games/zzd;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x138d

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/games/zzb;->t1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final r6(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/games/zzd;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 p1, 0x2ef4

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/games/zzb;->t1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final r8(Lcom/google/android/gms/games/internal/zzy;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/games/zzd;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x13a2

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/games/zzb;->t1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final ua()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x138b

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/games/zzb;->X0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method public final v1(Lcom/google/android/gms/games/internal/zzy;Landroid/os/Bundle;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/games/zzd;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/games/zzd;->d(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 4
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0x139d

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/games/zzb;->t1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final w4(Ljava/lang/String;II)Landroid/content/Intent;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p1, 0x4651

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/games/zzb;->X0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 6
    sget-object p2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/games/zzd;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final y5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 p1, 0x61b8

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/games/zzb;->X0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 6
    sget-object p2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/games/zzd;->b(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method

.method public final y7(Lcom/google/android/gms/games/internal/zzy;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/games/zzd;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/16 p1, 0x138a

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/games/zzb;->t1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final y8(Lcom/google/android/gms/games/internal/zzy;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/games/zzd;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/games/zzd;->a(Landroid/os/Parcel;Z)V

    const/16 p1, 0x1771

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/games/zzb;->t1(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final y9()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/games/zzb;->P0()Landroid/os/Parcel;

    move-result-object v0

    const/16 v1, 0x138f

    .line 2
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/games/zzb;->X0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method
