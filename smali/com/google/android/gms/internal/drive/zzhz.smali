###### Class com.google.android.gms.internal.drive.zzhz (com.google.android.gms.internal.drive.zzhz)
.class public final Lcom/google/android/gms/internal/drive/zzhz;
.super Lcom/google/android/gms/drive/metadata/internal/zzl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/metadata/internal/zzl<",
        "Lcom/google/android/gms/drive/DriveSpace;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .registers 5

    const-string p1, "inDriveSpace"

    const-string v0, "isAppData"

    const-string v1, "inGooglePhotosSpace"

    .line 1
    filled-new-array {p1, v0, v1}, [Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "spaces"

    const v2, 0x6acfc0

    .line 4
    invoke-direct {p0, v1, p1, v0, v2}, Lcom/google/android/gms/drive/metadata/internal/zzl;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;I)V

    return-void
.end method


# virtual methods
.method protected final synthetic f(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/drive/metadata/zzb;->g(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method protected final g(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/util/Collection;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataHolder;",
            "II)",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/drive/DriveSpace;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "inDriveSpace"

    .line 2
    invoke-virtual {p1, v1, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->V3(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3
    sget-object v1, Lcom/google/android/gms/drive/DriveSpace;->p:Lcom/google/android/gms/drive/DriveSpace;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    const-string v1, "isAppData"

    .line 4
    invoke-virtual {p1, v1, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->V3(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 5
    sget-object v1, Lcom/google/android/gms/drive/DriveSpace;->q:Lcom/google/android/gms/drive/DriveSpace;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1f
    const-string v1, "inGooglePhotosSpace"

    .line 6
    invoke-virtual {p1, v1, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->V3(Ljava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 7
    sget-object p1, Lcom/google/android/gms/drive/DriveSpace;->r:Lcom/google/android/gms/drive/DriveSpace;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c
    return-object v0
.end method
