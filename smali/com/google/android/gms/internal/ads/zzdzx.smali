###### Class com.google.android.gms.internal.ads.zzdzx (com.google.android.gms.internal.ads.zzdzx)
.class public final Lcom/google/android/gms/internal/ads/zzdzx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzawe;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/ads/zzdzb;

.field private final d:Lcom/google/android/gms/internal/ads/zzbzg;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/google/android/gms/internal/ads/zzfdk;

.field private final g:Lcom/google/android/gms/ads/internal/util/zzg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbzg;Lcom/google/android/gms/internal/ads/zzawe;Lcom/google/android/gms/internal/ads/zzdzb;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfdk;)V
    .registers 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzx;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdzx;->d:Lcom/google/android/gms/internal/ads/zzbzg;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdzx;->a:Lcom/google/android/gms/internal/ads/zzawe;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdzx;->c:Lcom/google/android/gms/internal/ads/zzdzb;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdzx;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdzx;->f:Lcom/google/android/gms/internal/ads/zzfdk;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->q()Lcom/google/android/gms/internal/ads/zzbyj;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbyj;->h()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzx;->g:Lcom/google/android/gms/ads/internal/util/zzg;

    return-void
.end method

.method private static final c(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)V
    .registers 12

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v4, v1

    :goto_8
    if-ge v3, v0, :cond_26

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 1
    check-cast v6, Lcom/google/android/gms/internal/ads/zzayn;

    .line 2
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzayn;->h0()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_23

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzayn;->O()J

    move-result-wide v7

    cmp-long v9, v7, v4

    if-lez v9, :cond_23

    .line 3
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzayn;->O()J

    move-result-wide v4

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_26
    cmp-long p1, v4, v1

    if-eqz p1, :cond_40

    new-instance p1, Landroid/content/ContentValues;

    .line 4
    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 5
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "value"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v0, 0x0

    const-string v1, "offline_signal_statistics"

    const-string v2, "statistic_name = \'last_successful_request_time\'"

    .line 6
    invoke-virtual {p0, v1, p1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_40
    return-void
.end method


# virtual methods
.method final synthetic a(ZLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_b

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzx;->b:Landroid/content/Context;

    const-string p2, "OfflineUpload.db"

    invoke-virtual {p1, p2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    goto/16 :goto_212

    .line 2
    :cond_b
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbar;->S7:Lcom/google/android/gms/internal/ads/zzbaj;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzba;->c()Lcom/google/android/gms/internal/ads/zzbap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbap;->b(Lcom/google/android/gms/internal/ads/zzbaj;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_187

    const-string p1, "oa_upload"

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfdj;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    move-result-object p1

    .line 6
    invoke-static {p2, v2}, Lcom/google/android/gms/internal/ads/zzdzq;->a(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v3

    .line 7
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "oa_failed_reqs"

    .line 8
    invoke-virtual {p1, v4, v3}, Lcom/google/android/gms/internal/ads/zzfdj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    .line 9
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/ads/zzdzq;->a(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v1

    .line 10
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "oa_total_reqs"

    .line 11
    invoke-virtual {p1, v3, v1}, Lcom/google/android/gms/internal/ads/zzfdj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v3, "oa_upload_time"

    .line 13
    invoke-virtual {p1, v3, v1}, Lcom/google/android/gms/internal/ads/zzfdj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    .line 14
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzdzq;->b(Landroid/database/sqlite/SQLiteDatabase;I)J

    move-result-wide v3

    .line 15
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v3, "oa_last_successful_time"

    .line 16
    invoke-virtual {p1, v3, v1}, Lcom/google/android/gms/internal/ads/zzfdj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdzx;->g:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 17
    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/util/zzg;->g0()Z

    move-result v1

    const-string v3, ""

    if-eqz v1, :cond_6a

    move-object v1, v3

    goto :goto_6c

    .line 18
    :cond_6a
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdzx;->e:Ljava/lang/String;

    :goto_6c
    const-string v4, "oa_session_id"

    .line 19
    invoke-virtual {p1, v4, v1}, Lcom/google/android/gms/internal/ads/zzfdj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdzx;->f:Lcom/google/android/gms/internal/ads/zzfdk;

    .line 20
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzfdk;->a(Lcom/google/android/gms/internal/ads/zzfdj;)V

    .line 21
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdzq;->c(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object p1

    .line 22
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzdzx;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)V

    .line 23
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_81
    if-ge v2, v1, :cond_20f

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 24
    check-cast v5, Lcom/google/android/gms/internal/ads/zzayn;

    const-string v6, "oa_signals"

    .line 25
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzfdj;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzdzx;->g:Lcom/google/android/gms/ads/internal/util/zzg;

    .line 26
    invoke-interface {v7}, Lcom/google/android/gms/ads/internal/util/zzg;->g0()Z

    move-result v7

    if-eqz v7, :cond_99

    move-object v7, v3

    goto :goto_9b

    .line 27
    :cond_99
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzdzx;->e:Ljava/lang/String;

    .line 28
    :goto_9b
    invoke-virtual {v6, v4, v7}, Lcom/google/android/gms/internal/ads/zzfdj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    .line 29
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzayn;->P()Lcom/google/android/gms/internal/ads/zzayi;

    move-result-object v7

    .line 30
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzayi;->M()Z

    move-result v8

    if-eqz v8, :cond_b3

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzayi;->O()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_b5

    :cond_b3
    const-string v8, "-1"

    .line 31
    :goto_b5
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzayn;->V()Ljava/util/List;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/internal/ads/zzdzw;->a:Lcom/google/android/gms/internal/ads/zzdzw;

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/zzfqy;->b(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfnj;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 32
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzayn;->O()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    const-string v11, "oa_sig_ts"

    invoke-virtual {v6, v11, v10}, Lcom/google/android/gms/internal/ads/zzfdj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    .line 33
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzayn;->h0()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "oa_sig_status"

    invoke-virtual {v6, v11, v10}, Lcom/google/android/gms/internal/ads/zzfdj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    .line 34
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzayn;->N()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    const-string v11, "oa_sig_resp_lat"

    invoke-virtual {v6, v11, v10}, Lcom/google/android/gms/internal/ads/zzfdj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    .line 35
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzayn;->M()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    const-string v11, "oa_sig_render_lat"

    invoke-virtual {v6, v11, v10}, Lcom/google/android/gms/internal/ads/zzfdj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    const-string v10, "oa_sig_formats"

    .line 36
    invoke-virtual {v6, v10, v9}, Lcom/google/android/gms/internal/ads/zzfdj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    const-string v9, "oa_sig_nw_type"

    .line 37
    invoke-virtual {v6, v9, v8}, Lcom/google/android/gms/internal/ads/zzfdj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    .line 38
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzayn;->i0()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "oa_sig_wifi"

    invoke-virtual {v6, v9, v8}, Lcom/google/android/gms/internal/ads/zzfdj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    .line 39
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzayn;->e0()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "oa_sig_airplane"

    .line 40
    invoke-virtual {v6, v9, v8}, Lcom/google/android/gms/internal/ads/zzfdj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    .line 41
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzayn;->f0()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "oa_sig_data"

    invoke-virtual {v6, v9, v8}, Lcom/google/android/gms/internal/ads/zzfdj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    .line 42
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzayn;->L()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "oa_sig_nw_resp"

    .line 43
    invoke-virtual {v6, v9, v8}, Lcom/google/android/gms/internal/ads/zzfdj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    .line 44
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzayn;->g0()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "oa_sig_offline"

    invoke-virtual {v6, v9, v8}, Lcom/google/android/gms/internal/ads/zzfdj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    .line 45
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzayn;->T()Lcom/google/android/gms/internal/ads/zzayr;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzayr;->zza()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v8, "oa_sig_nw_state"

    .line 46
    invoke-virtual {v6, v8, v5}, Lcom/google/android/gms/internal/ads/zzfdj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    .line 47
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzayi;->L()Z

    move-result v5

    if-eqz v5, :cond_17e

    .line 48
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzayi;->M()Z

    move-result v5

    if-eqz v5, :cond_17e

    .line 49
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzayi;->O()I

    move-result v5

    if-ne v5, v0, :cond_17e

    .line 50
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzayi;->N()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "oa_sig_cell_type"

    .line 51
    invoke-virtual {v6, v7, v5}, Lcom/google/android/gms/internal/ads/zzfdj;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdj;

    :cond_17e
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdzx;->f:Lcom/google/android/gms/internal/ads/zzfdk;

    .line 52
    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/ads/zzfdk;->a(Lcom/google/android/gms/internal/ads/zzfdj;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_81

    .line 53
    :cond_187
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdzq;->c(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object p1

    .line 54
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzays;->I()Lcom/google/android/gms/internal/ads/zzayo;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdzx;->b:Landroid/content/Context;

    .line 55
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzayo;->p(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzayo;

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 56
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzayo;->r(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzayo;

    .line 57
    invoke-static {p2, v2}, Lcom/google/android/gms/internal/ads/zzdzq;->a(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v4

    .line 58
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzayo;->s(I)Lcom/google/android/gms/internal/ads/zzayo;

    .line 59
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzayo;->o(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzayo;

    .line 60
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/ads/zzdzq;->a(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v4

    .line 61
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzayo;->v(I)Lcom/google/android/gms/internal/ads/zzayo;

    const/4 v4, 0x3

    .line 62
    invoke-static {p2, v4}, Lcom/google/android/gms/internal/ads/zzdzq;->a(Landroid/database/sqlite/SQLiteDatabase;I)I

    move-result v4

    .line 63
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzayo;->q(I)Lcom/google/android/gms/internal/ads/zzayo;

    .line 64
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzayo;->w(J)Lcom/google/android/gms/internal/ads/zzayo;

    .line 65
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzdzq;->b(Landroid/database/sqlite/SQLiteDatabase;I)J

    move-result-wide v4

    .line 66
    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzayo;->u(J)Lcom/google/android/gms/internal/ads/zzayo;

    .line 67
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzays;

    .line 68
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzdzx;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzx;->a:Lcom/google/android/gms/internal/ads/zzawe;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzdzu;

    invoke-direct {v4, v3}, Lcom/google/android/gms/internal/ads/zzdzu;-><init>(Lcom/google/android/gms/internal/ads/zzays;)V

    .line 69
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/zzawe;->b(Lcom/google/android/gms/internal/ads/zzawd;)V

    .line 70
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaze;->I()Lcom/google/android/gms/internal/ads/zzazd;

    move-result-object p1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdzx;->d:Lcom/google/android/gms/internal/ads/zzbzg;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzbzg;->p:I

    .line 71
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzazd;->o(I)Lcom/google/android/gms/internal/ads/zzazd;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdzx;->d:Lcom/google/android/gms/internal/ads/zzbzg;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzbzg;->q:I

    .line 72
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzazd;->q(I)Lcom/google/android/gms/internal/ads/zzazd;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdzx;->d:Lcom/google/android/gms/internal/ads/zzbzg;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzbzg;->r:Z

    if-eq v1, v3, :cond_1f4

    goto :goto_1f5

    :cond_1f4
    const/4 v0, 0x0

    .line 73
    :goto_1f5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzazd;->p(I)Lcom/google/android/gms/internal/ads/zzazd;

    .line 74
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaze;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzx;->a:Lcom/google/android/gms/internal/ads/zzawe;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdzv;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzdzv;-><init>(Lcom/google/android/gms/internal/ads/zzaze;)V

    .line 75
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzawe;->b(Lcom/google/android/gms/internal/ads/zzawd;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzx;->a:Lcom/google/android/gms/internal/ads/zzawe;

    const/16 v0, 0x2714

    .line 76
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzawe;->c(I)V

    .line 77
    :cond_20f
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdzq;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    :goto_212
    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Z)V
    .registers 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzx;->c:Lcom/google/android/gms/internal/ads/zzdzb;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdzt;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzdzt;-><init>(Lcom/google/android/gms/internal/ads/zzdzx;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdzb;->a(Lcom/google/android/gms/internal/ads/zzfcd;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Error in offline signals database startup: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbza;->d(Ljava/lang/String;)V

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzdzt (com.google.android.gms.internal.ads.zzdzt)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzdzt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfcd;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzdzx;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdzx;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzt;->a:Lcom/google/android/gms/internal/ads/zzdzx;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzdzt;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzt;->a:Lcom/google/android/gms/internal/ads/zzdzx;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdzt;->b:Z

    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdzx;->a(ZLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Void;

    const/4 p1, 0x0

    return-object p1
.end method

###### Class com.google.android.gms.internal.ads.zzdzu (com.google.android.gms.internal.ads.zzdzu)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzdzu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzawd;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzays;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzays;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzu;->a:Lcom/google/android/gms/internal/ads/zzays;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzaxt;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzu;->a:Lcom/google/android/gms/internal/ads/zzays;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzaxt;->x(Lcom/google/android/gms/internal/ads/zzays;)Lcom/google/android/gms/internal/ads/zzaxt;

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzdzv (com.google.android.gms.internal.ads.zzdzv)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzdzv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzawd;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzaze;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzaze;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzv;->a:Lcom/google/android/gms/internal/ads/zzaze;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/zzaxt;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzv;->a:Lcom/google/android/gms/internal/ads/zzaze;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaxt;->p()Lcom/google/android/gms/internal/ads/zzaxm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgqm;->i()Lcom/google/android/gms/internal/ads/zzgqi;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaxl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaxl;->p(Lcom/google/android/gms/internal/ads/zzaze;)Lcom/google/android/gms/internal/ads/zzaxl;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzaxt;->v(Lcom/google/android/gms/internal/ads/zzaxl;)Lcom/google/android/gms/internal/ads/zzaxt;

    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzdzw (com.google.android.gms.internal.ads.zzdzw)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzdzw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfnj;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzdzw;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdzw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdzw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdzw;->a:Lcom/google/android/gms/internal/ads/zzdzw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaxc;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
