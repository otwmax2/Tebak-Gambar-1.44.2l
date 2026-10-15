###### Class com.google.android.gms.games.snapshot.SnapshotContentsEntity (com.google.android.gms.games.snapshot.SnapshotContentsEntity)
.class public final Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;
.super Lcom/google/android/gms/games/internal/zzb;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/games/snapshot/SnapshotContents;


# annotations
.annotation build Lcom/google/android/apps/common/proguard/UsedByReflection;
    value = "GamesGmsClientImpl.java"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;",
            ">;"
        }
    .end annotation
.end field

.field private static final p:Ljava/lang/Object;


# instance fields
.field private o:Lcom/google/android/gms/drive/Contents;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;->p:Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/android/gms/games/snapshot/zza;

    invoke-direct {v0}, Lcom/google/android/gms/games/snapshot/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/drive/Contents;)V
    .registers 2
    .param p1    # Lcom/google/android/gms/drive/Contents;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zzb;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;->o:Lcom/google/android/gms/drive/Contents;

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;->o:Lcom/google/android/gms/drive/Contents;

    return-void
.end method

.method public final isClosed()Z
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;->o:Lcom/google/android/gms/drive/Contents;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;->o:Lcom/google/android/gms/drive/Contents;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->s(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->b(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final y1()Lcom/google/android/gms/drive/Contents;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;->o:Lcom/google/android/gms/drive/Contents;

    return-object v0
.end method
