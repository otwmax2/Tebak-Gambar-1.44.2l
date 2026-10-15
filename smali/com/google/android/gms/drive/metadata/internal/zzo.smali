###### Class com.google.android.gms.drive.metadata.internal.zzo (com.google.android.gms.drive.metadata.internal.zzo)
.class public final Lcom/google/android/gms/drive/metadata/internal/zzo;
.super Lcom/google/android/gms/drive/metadata/internal/zzl;

# interfaces
.implements Lcom/google/android/gms/drive/metadata/SearchableCollectionMetadataField;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/metadata/internal/zzl<",
        "Lcom/google/android/gms/drive/DriveId;",
        ">;",
        "Lcom/google/android/gms/drive/metadata/SearchableCollectionMetadataField<",
        "Lcom/google/android/gms/drive/DriveId;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lcom/google/android/gms/drive/metadata/internal/zzg;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/a;

    invoke-direct {v0}, Lcom/google/android/gms/drive/metadata/internal/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/metadata/internal/zzo;->e:Lcom/google/android/gms/drive/metadata/internal/zzg;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    const-string v0, "parentsExtra"

    const-string v1, "dbInstanceId"

    const-string v2, "parentsExtraHolder"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "parents"

    const v2, 0x3e8fa0

    .line 3
    invoke-direct {p0, v1, p1, v0, v2}, Lcom/google/android/gms/drive/metadata/internal/zzl;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;I)V

    return-void
.end method

.method private static i(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->Z3()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 2
    :cond_7
    monitor-enter p0

    :try_start_8
    const-string v1, "parentsExtraHolder"

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/data/DataHolder;

    if-eqz v1, :cond_1a

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    const-string v1, "parentsExtraHolder"

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 6
    :cond_1a
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method static synthetic j(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/drive/metadata/internal/zzo;->i(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method


# virtual methods
.method protected final synthetic d(Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/metadata/internal/zzl;->h(Landroid/os/Bundle;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic f(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/drive/metadata/zzb;->g(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method protected final g(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/util/Collection;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataHolder;",
            "II)",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/drive/DriveId;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/common/data/DataHolder;->Z3()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "parentsExtra"

    .line 2
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_cc

    const-string v3, "parentsExtraHolder"

    .line 3
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_c8

    .line 4
    monitor-enter p1

    .line 5
    :try_start_17
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/common/data/DataHolder;->Z3()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "parentsExtraHolder"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/data/DataHolder;

    if-nez v2, :cond_28

    .line 6
    monitor-exit p1
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_c5

    goto/16 :goto_b0

    .line 7
    :cond_28
    :try_start_28
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v3

    .line 8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v3}, Ljava/util/HashMap;-><init>(I)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_38
    if-ge v7, v3, :cond_56

    .line 10
    invoke-virtual {v1, v7}, Lcom/google/android/gms/common/data/DataHolder;->c4(I)I

    move-result v8

    .line 11
    new-instance v9, Lcom/google/android/gms/drive/metadata/internal/ParentDriveIdSet;

    invoke-direct {v9}, Lcom/google/android/gms/drive/metadata/internal/ParentDriveIdSet;-><init>()V

    .line 12
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v10, "sqlId"

    .line 13
    invoke-virtual {v1, v10, v7, v8}, Lcom/google/android/gms/common/data/DataHolder;->Y3(Ljava/lang/String;II)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 14
    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_38

    .line 15
    :cond_56
    invoke-virtual {v2}, Lcom/google/android/gms/common/data/DataHolder;->Z3()Landroid/os/Bundle;

    move-result-object v3

    const-string v7, "childSqlIdColumn"

    .line 16
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "parentSqlIdColumn"

    .line 17
    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "parentResIdColumn"

    .line 18
    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v9

    :goto_70
    if-ge v6, v9, :cond_9a

    .line 20
    invoke-virtual {v2, v6}, Lcom/google/android/gms/common/data/DataHolder;->c4(I)I

    move-result v10

    .line 21
    invoke-virtual {v2, v7, v6, v10}, Lcom/google/android/gms/common/data/DataHolder;->Y3(Ljava/lang/String;II)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 22
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/drive/metadata/internal/ParentDriveIdSet;

    .line 23
    new-instance v12, Lcom/google/android/gms/drive/metadata/internal/zzq;

    .line 24
    invoke-virtual {v2, v3, v6, v10}, Lcom/google/android/gms/common/data/DataHolder;->b4(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v13

    .line 25
    invoke-virtual {v2, v8, v6, v10}, Lcom/google/android/gms/common/data/DataHolder;->Y3(Ljava/lang/String;II)J

    move-result-wide v14

    const/4 v10, 0x1

    invoke-direct {v12, v13, v14, v15, v10}, Lcom/google/android/gms/drive/metadata/internal/zzq;-><init>(Ljava/lang/String;JI)V

    .line 26
    iget-object v10, v11, Lcom/google/android/gms/drive/metadata/internal/ParentDriveIdSet;->o:Ljava/util/List;

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_70

    .line 27
    :cond_9a
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/common/data/DataHolder;->Z3()Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "parentsExtra"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_a3
    .catchall {:try_start_28 .. :try_end_a3} :catchall_b7

    .line 28
    :try_start_a3
    invoke-virtual {v2}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/common/data/DataHolder;->Z3()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "parentsExtraHolder"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 30
    monitor-exit p1
    :try_end_b0
    .catchall {:try_start_a3 .. :try_end_b0} :catchall_c5

    :goto_b0
    const-string v1, "parentsExtra"

    .line 31
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_c8

    :catchall_b7
    move-exception v0

    .line 32
    :try_start_b8
    invoke-virtual {v2}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    .line 33
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/common/data/DataHolder;->Z3()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "parentsExtraHolder"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    throw v0

    :catchall_c5
    move-exception v0

    .line 34
    monitor-exit p1
    :try_end_c7
    .catchall {:try_start_b8 .. :try_end_c7} :catchall_c5

    throw v0

    :cond_c8
    :goto_c8
    if-nez v2, :cond_cc

    const/4 v0, 0x0

    return-object v0

    :cond_cc
    const-string v1, "dbInstanceId"

    .line 35
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    move/from16 v3, p2

    .line 36
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/drive/metadata/internal/ParentDriveIdSet;

    .line 37
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 38
    iget-object v2, v2, Lcom/google/android/gms/drive/metadata/internal/ParentDriveIdSet;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_102

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/drive/metadata/internal/zzq;

    .line 39
    new-instance v11, Lcom/google/android/gms/drive/DriveId;

    iget-object v4, v3, Lcom/google/android/gms/drive/metadata/internal/zzq;->o:Ljava/lang/String;

    iget-wide v5, v3, Lcom/google/android/gms/drive/metadata/internal/zzq;->p:J

    iget v9, v3, Lcom/google/android/gms/drive/metadata/internal/zzq;->q:I

    move-object v3, v11

    move-wide v7, v0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/drive/DriveId;-><init>(Ljava/lang/String;JJI)V

    .line 40
    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_e5

    :cond_102
    return-object v10
.end method

.method protected final h(Landroid/os/Bundle;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/google/android/gms/drive/DriveId;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/drive/metadata/internal/zzl;->h(Landroid/os/Bundle;)Ljava/util/Collection;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
