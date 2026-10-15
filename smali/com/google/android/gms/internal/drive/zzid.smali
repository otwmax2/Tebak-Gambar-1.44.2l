###### Class com.google.android.gms.internal.drive.zzid (com.google.android.gms.internal.drive.zzid)
.class public Lcom/google/android/gms/internal/drive/zzid;
.super Lcom/google/android/gms/drive/metadata/internal/zzm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/drive/metadata/internal/zzm<",
        "Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lcom/google/android/gms/drive/metadata/internal/zzg;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/drive/zzie;

    invoke-direct {v0}, Lcom/google/android/gms/internal/drive/zzie;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzid;->e:Lcom/google/android/gms/drive/metadata/internal/zzg;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 5

    const-string p1, "hasCustomProperties"

    const-string v0, "sqlId"

    .line 1
    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v0, "customPropertiesExtra"

    const-string v1, "customPropertiesExtraHolder"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "customProperties"

    const v2, 0x4c4b40

    .line 4
    invoke-direct {p0, v1, p1, v0, v2}, Lcom/google/android/gms/drive/metadata/internal/zzm;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;I)V

    return-void
.end method

.method private static g(Lcom/google/android/gms/common/data/DataHolder;)V
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
    const-string v1, "customPropertiesExtraHolder"

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/data/DataHolder;

    if-eqz v1, :cond_1a

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    const-string v1, "customPropertiesExtraHolder"

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

.method static synthetic h(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzid;->g(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method

.method private static i(Lcom/google/android/gms/common/data/DataHolder;II)Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;
    .registers 19

    move-object/from16 v1, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/data/DataHolder;->Z3()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "customPropertiesExtra"

    .line 2
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    if-nez v2, :cond_df

    const-string v3, "customPropertiesExtraHolder"

    .line 3
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_da

    .line 4
    monitor-enter p0

    .line 5
    :try_start_17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/data/DataHolder;->Z3()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "customPropertiesExtraHolder"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/data/DataHolder;

    if-nez v2, :cond_28

    .line 6
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_d7

    goto/16 :goto_c2

    .line 7
    :cond_28
    :try_start_28
    invoke-virtual {v2}, Lcom/google/android/gms/common/data/DataHolder;->Z3()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "entryIdColumn"

    .line 8
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "keyColumn"

    .line 9
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "visibilityColumn"

    .line 10
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "valueColumn"

    .line 11
    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 12
    new-instance v7, Lo/d;

    invoke-direct {v7}, Lo/d;-><init>()V

    const/4 v9, 0x0

    .line 13
    :goto_4a
    invoke-virtual {v2}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v10

    if-ge v9, v10, :cond_84

    .line 14
    invoke-virtual {v2, v9}, Lcom/google/android/gms/common/data/DataHolder;->c4(I)I

    move-result v10

    .line 15
    invoke-virtual {v2, v4, v9, v10}, Lcom/google/android/gms/common/data/DataHolder;->Y3(Ljava/lang/String;II)J

    move-result-wide v11

    .line 16
    invoke-virtual {v2, v5, v9, v10}, Lcom/google/android/gms/common/data/DataHolder;->b4(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v13

    .line 17
    invoke-virtual {v2, v6, v9, v10}, Lcom/google/android/gms/common/data/DataHolder;->X3(Ljava/lang/String;II)I

    move-result v14

    .line 18
    invoke-virtual {v2, v3, v9, v10}, Lcom/google/android/gms/common/data/DataHolder;->b4(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v10

    .line 19
    new-instance v15, Lcom/google/android/gms/drive/metadata/internal/zzc;

    new-instance v8, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;

    invoke-direct {v8, v13, v14}, Lcom/google/android/gms/drive/metadata/CustomPropertyKey;-><init>(Ljava/lang/String;I)V

    invoke-direct {v15, v8, v10}, Lcom/google/android/gms/drive/metadata/internal/zzc;-><init>(Lcom/google/android/gms/drive/metadata/CustomPropertyKey;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v7, v11, v12}, Lo/d;->g(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;

    if-nez v8, :cond_7e

    .line 21
    new-instance v8, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;

    invoke-direct {v8}, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;-><init>()V

    .line 22
    invoke-virtual {v7, v11, v12, v8}, Lo/d;->k(JLjava/lang/Object;)V

    .line 23
    :cond_7e
    invoke-virtual {v8, v15}, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;->a(Lcom/google/android/gms/drive/metadata/internal/zzc;)Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;

    add-int/lit8 v9, v9, 0x1

    goto :goto_4a

    .line 24
    :cond_84
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    const/4 v8, 0x0

    .line 25
    :goto_8a
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v4

    if-ge v8, v4, :cond_ac

    const-string v4, "sqlId"

    .line 26
    invoke-virtual {v1, v8}, Lcom/google/android/gms/common/data/DataHolder;->c4(I)I

    move-result v5

    invoke-virtual {v1, v4, v8, v5}, Lcom/google/android/gms/common/data/DataHolder;->Y3(Ljava/lang/String;II)J

    move-result-wide v4

    .line 27
    invoke-virtual {v7, v4, v5}, Lo/d;->g(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;

    if-eqz v4, :cond_a9

    .line 28
    invoke-virtual {v4}, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$zza;->b()Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_a9
    add-int/lit8 v8, v8, 0x1

    goto :goto_8a

    .line 29
    :cond_ac
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/data/DataHolder;->Z3()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "customPropertiesExtra"

    .line 30
    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V
    :try_end_b5
    .catchall {:try_start_28 .. :try_end_b5} :catchall_c9

    .line 31
    :try_start_b5
    invoke-virtual {v2}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/data/DataHolder;->Z3()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "customPropertiesExtraHolder"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 33
    monitor-exit p0
    :try_end_c2
    .catchall {:try_start_b5 .. :try_end_c2} :catchall_d7

    :goto_c2
    const-string v1, "customPropertiesExtra"

    .line 34
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    goto :goto_da

    :catchall_c9
    move-exception v0

    .line 35
    :try_start_ca
    invoke-virtual {v2}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/data/DataHolder;->Z3()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "customPropertiesExtraHolder"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    throw v0

    :catchall_d7
    move-exception v0

    .line 37
    monitor-exit p0
    :try_end_d9
    .catchall {:try_start_ca .. :try_end_d9} :catchall_d7

    throw v0

    :cond_da
    :goto_da
    if-nez v2, :cond_df

    .line 38
    sget-object v0, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;->p:Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;

    return-object v0

    .line 39
    :cond_df
    sget-object v0, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;->p:Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;

    move/from16 v1, p1

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;

    return-object v0
.end method


# virtual methods
.method protected final synthetic f(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
    .registers 4

    .line 1
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/drive/zzid;->i(Lcom/google/android/gms/common/data/DataHolder;II)Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;

    move-result-object p1

    return-object p1
.end method
