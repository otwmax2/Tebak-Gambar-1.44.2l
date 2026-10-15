###### Class com.google.android.gms.measurement.internal.s0 (com.google.android.gms.measurement.internal.s0)
.class final Lcom/google/android/gms/measurement/internal/s0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@20.1.2"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/measurement/internal/zzav;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/measurement/internal/zzha;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzha;Lcom/google/android/gms/measurement/internal/zzav;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/s0;->c:Lcom/google/android/gms/measurement/internal/zzha;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/s0;->a:Lcom/google/android/gms/measurement/internal/zzav;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/s0;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .registers 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "_r"

    .line 1
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/s0;->c:Lcom/google/android/gms/measurement/internal/zzha;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzha;->Q4(Lcom/google/android/gms/measurement/internal/zzha;)Lcom/google/android/gms/measurement/internal/zzli;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzli;->a()V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/s0;->c:Lcom/google/android/gms/measurement/internal/zzha;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzha;->Q4(Lcom/google/android/gms/measurement/internal/zzha;)Lcom/google/android/gms/measurement/internal/zzli;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzli;->b0()Lcom/google/android/gms/measurement/internal/z1;

    move-result-object v2

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/s0;->a:Lcom/google/android/gms/measurement/internal/zzav;

    iget-object v13, v1, Lcom/google/android/gms/measurement/internal/s0;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/y0;->c()V

    .line 4
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzgi;->o()V

    .line 5
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {v13}, Lcom/google/android/gms/common/internal/Preconditions;->g(Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 7
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v4

    .line 8
    sget-object v5, Lcom/google/android/gms/measurement/internal/zzel;->V:Lcom/google/android/gms/measurement/internal/zzek;

    invoke-virtual {v4, v13, v5}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v4

    const/4 v14, 0x0

    const/4 v5, 0x0

    if-nez v4, :cond_4a

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->l()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    const-string v2, "Generating ScionPayload disabled. packageName"

    invoke-virtual {v0, v2, v13}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v14, v5, [B

    goto/16 :goto_5e6

    .line 11
    :cond_4a
    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzav;->o:Ljava/lang/String;

    const-string v6, "_iap"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_71

    iget-object v4, v3, Lcom/google/android/gms/measurement/internal/zzav;->o:Ljava/lang/String;

    const-string v6, "_iapx"

    .line 12
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_71

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->l()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    iget-object v2, v3, Lcom/google/android/gms/measurement/internal/zzav;->o:Ljava/lang/String;

    const-string v3, "Generating a payload for this event is not available. package_name, event_name"

    .line 15
    invoke-virtual {v0, v3, v13, v2}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_5e6

    .line 16
    :cond_71
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzga;->u()Lcom/google/android/gms/internal/measurement/zzfz;

    move-result-object v6

    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    .line 17
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzli;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v4

    .line 18
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/e;->d0()V

    :try_start_7e
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    .line 19
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzli;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v4

    .line 20
    invoke-virtual {v4, v13}, Lcom/google/android/gms/measurement/internal/e;->P(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/c0;

    move-result-object v4

    if-nez v4, :cond_a6

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->l()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    const-string v3, "Log and bundle not available. package_name"

    invoke-virtual {v0, v3, v13}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v14, v5, [B
    :try_end_9b
    .catchall {:try_start_7e .. :try_end_9b} :catchall_5e7

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    .line 23
    :goto_9d
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzli;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/e;->e0()V

    goto/16 :goto_5e6

    .line 25
    :cond_a6
    :try_start_a6
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/c0;->K()Z

    move-result v7

    if-nez v7, :cond_c0

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzey;->l()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v0

    const-string v3, "Log and bundle disabled. package_name"

    invoke-virtual {v0, v3, v13}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v14, v5, [B
    :try_end_bd
    .catchall {:try_start_a6 .. :try_end_bd} :catchall_5e7

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    goto :goto_9d

    .line 28
    :cond_c0
    :try_start_c0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgc;->N1()Lcom/google/android/gms/internal/measurement/zzgb;

    move-result-object v15

    const/4 v11, 0x1

    invoke-virtual {v15, v11}, Lcom/google/android/gms/internal/measurement/zzgb;->a0(I)Lcom/google/android/gms/internal/measurement/zzgb;

    const-string v7, "android"

    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/zzgb;->V(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgb;

    .line 29
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/c0;->e0()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_de

    .line 30
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/c0;->e0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/zzgb;->v(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgb;

    .line 31
    :cond_de
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/c0;->g0()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_f5

    .line 32
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/c0;->g0()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/zzgb;->x(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgb;

    .line 33
    :cond_f5
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/c0;->h0()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_10c

    .line 34
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/c0;->h0()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/zzgb;->y(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgb;

    .line 35
    :cond_10c
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/c0;->M()J

    move-result-wide v7

    const-wide/32 v9, -0x80000000

    cmp-long v12, v7, v9

    if-eqz v12, :cond_11f

    .line 36
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/c0;->M()J

    move-result-wide v7

    long-to-int v8, v7

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/zzgb;->z(I)Lcom/google/android/gms/internal/measurement/zzgb;

    .line 37
    :cond_11f
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/c0;->X()J

    move-result-wide v7

    invoke-virtual {v15, v7, v8}, Lcom/google/android/gms/internal/measurement/zzgb;->P(J)Lcom/google/android/gms/internal/measurement/zzgb;

    .line 38
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/c0;->V()J

    move-result-wide v7

    invoke-virtual {v15, v7, v8}, Lcom/google/android/gms/internal/measurement/zzgb;->H(J)Lcom/google/android/gms/internal/measurement/zzgb;

    .line 39
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/c0;->j0()Ljava/lang/String;

    move-result-object v7

    .line 40
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/c0;->c0()Ljava/lang/String;

    move-result-object v8

    .line 41
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_13f

    .line 42
    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/zzgb;->O(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgb;

    goto :goto_148

    .line 43
    :cond_13f
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_148

    .line 44
    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/zzgb;->t(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgb;

    .line 45
    :cond_148
    :goto_148
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    .line 46
    invoke-virtual {v7, v13}, Lcom/google/android/gms/measurement/internal/zzli;->S(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v7

    .line 47
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/c0;->U()J

    move-result-wide v8

    invoke-virtual {v15, v8, v9}, Lcom/google/android/gms/internal/measurement/zzgb;->E(J)Lcom/google/android/gms/internal/measurement/zzgb;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 48
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgi;->j()Z

    move-result v8

    if-eqz v8, :cond_17e

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 49
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v8

    .line 50
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzgb;->n0()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/android/gms/measurement/internal/zzaf;->z(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17e

    .line 51
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzag;->p:Lcom/google/android/gms/measurement/internal/zzag;

    .line 52
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzah;->i(Lcom/google/android/gms/measurement/internal/zzag;)Z

    move-result v8

    if-eqz v8, :cond_17e

    .line 53
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_17e

    .line 54
    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/measurement/zzgb;->G(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgb;

    .line 55
    :cond_17e
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzah;->h()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/zzgb;->D(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgb;

    .line 56
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzag;->p:Lcom/google/android/gms/measurement/internal/zzag;

    .line 57
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzah;->i(Lcom/google/android/gms/measurement/internal/zzag;)Z

    move-result v8

    if-eqz v8, :cond_1e4

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzli;->c0()Lcom/google/android/gms/measurement/internal/zzkd;

    move-result-object v8

    .line 58
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/c0;->e0()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v7}, Lcom/google/android/gms/measurement/internal/zzkd;->i(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzah;)Landroid/util/Pair;

    move-result-object v8

    .line 59
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/c0;->J()Z

    move-result v9

    if-eqz v9, :cond_1e4

    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/CharSequence;

    .line 60
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_1a9
    .catchall {:try_start_c0 .. :try_end_1a9} :catchall_5e7

    if-nez v9, :cond_1e4

    .line 61
    :try_start_1ab
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-wide v11, v3, Lcom/google/android/gms/measurement/internal/zzav;->r:J

    .line 62
    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    .line 63
    invoke-static {v9, v10}, Lcom/google/android/gms/measurement/internal/z1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 64
    invoke-virtual {v15, v9}, Lcom/google/android/gms/internal/measurement/zzgb;->b0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgb;
    :try_end_1bc
    .catch Ljava/lang/SecurityException; {:try_start_1ab .. :try_end_1bc} :catch_1ca
    .catchall {:try_start_1ab .. :try_end_1bc} :catchall_5e7

    .line 65
    :try_start_1bc
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v8, :cond_1e4

    .line 66
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/zzgb;->R(Z)Lcom/google/android/gms/internal/measurement/zzgb;

    goto :goto_1e4

    :catch_1ca
    move-exception v0

    .line 67
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 68
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v3

    .line 69
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzey;->l()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v3

    const-string v4, "Resettable device id encryption failed"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-array v14, v5, [B
    :try_end_1e0
    .catchall {:try_start_1bc .. :try_end_1e0} :catchall_5e7

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    goto/16 :goto_9d

    .line 70
    :cond_1e4
    :goto_1e4
    :try_start_1e4
    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 71
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgi;->w()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v8

    .line 72
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/z0;->f()V

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/zzgb;->F(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgb;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 73
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgi;->w()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v8

    .line 74
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/z0;->f()V

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/zzgb;->S(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgb;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 75
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgi;->w()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v8

    .line 76
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzap;->k()J

    move-result-wide v8

    long-to-int v9, v8

    invoke-virtual {v15, v9}, Lcom/google/android/gms/internal/measurement/zzgb;->g0(I)Lcom/google/android/gms/internal/measurement/zzgb;

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 77
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgi;->w()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v8

    .line 78
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzap;->l()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Lcom/google/android/gms/internal/measurement/zzgb;->k0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgb;
    :try_end_21b
    .catchall {:try_start_1e4 .. :try_end_21b} :catchall_5e7

    :try_start_21b
    sget-object v8, Lcom/google/android/gms/measurement/internal/zzag;->q:Lcom/google/android/gms/measurement/internal/zzag;

    .line 79
    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/zzah;->i(Lcom/google/android/gms/measurement/internal/zzag;)Z

    move-result v7

    if-eqz v7, :cond_240

    .line 80
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/c0;->f0()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_240

    .line 81
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/c0;->f0()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-wide v8, v3, Lcom/google/android/gms/measurement/internal/zzav;->r:J

    .line 82
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .line 83
    invoke-static {v7, v8}, Lcom/google/android/gms/measurement/internal/z1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 84
    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/zzgb;->w(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgb;
    :try_end_240
    .catch Ljava/lang/SecurityException; {:try_start_21b .. :try_end_240} :catch_5cb
    .catchall {:try_start_21b .. :try_end_240} :catchall_5e7

    .line 85
    :cond_240
    :try_start_240
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/c0;->i0()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_257

    .line 86
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/c0;->i0()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v15, v7}, Lcom/google/android/gms/internal/measurement/zzgb;->N(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgb;

    .line 87
    :cond_257
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/c0;->e0()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    .line 88
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzli;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v8

    .line 89
    invoke-virtual {v8, v7}, Lcom/google/android/gms/measurement/internal/e;->b0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 90
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_269
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_280

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/measurement/internal/b4;

    const-string v11, "_lte"

    .line 91
    iget-object v12, v10, Lcom/google/android/gms/measurement/internal/b4;->c:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_269

    goto :goto_281

    :cond_280
    move-object v10, v14

    :goto_281
    const-wide/16 v24, 0x0

    if-eqz v10, :cond_289

    iget-object v9, v10, Lcom/google/android/gms/measurement/internal/b4;->e:Ljava/lang/Object;

    if-nez v9, :cond_2b0

    :cond_289
    new-instance v9, Lcom/google/android/gms/measurement/internal/b4;

    const-string v19, "auto"

    const-string v20, "_lte"

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 92
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzgi;->x()Lcom/google/android/gms/common/util/Clock;

    move-result-object v10

    .line 93
    invoke-interface {v10}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v21

    .line 94
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v17, v9

    move-object/from16 v18, v7

    invoke-direct/range {v17 .. v23}, Lcom/google/android/gms/measurement/internal/b4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 95
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    .line 96
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzli;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v7

    .line 97
    invoke-virtual {v7, v9}, Lcom/google/android/gms/measurement/internal/e;->s(Lcom/google/android/gms/measurement/internal/b4;)Z

    :cond_2b0
    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    .line 98
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzli;->e0()Lcom/google/android/gms/measurement/internal/zzlk;

    move-result-object v7

    iget-object v9, v7, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 99
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v9

    .line 100
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzey;->q()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v9

    const-string v10, "Checking account type status for ad personalization signals"

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    iget-object v9, v7, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 101
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzgi;->w()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v9

    .line 102
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzap;->n()Z

    move-result v9

    const-wide/16 v10, 0x1

    if-eqz v9, :cond_33b

    .line 103
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/c0;->e0()Ljava/lang/String;

    move-result-object v9

    .line 104
    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/c0;->J()Z

    move-result v12

    if-eqz v12, :cond_33b

    iget-object v12, v7, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    .line 106
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzli;->Y()Lcom/google/android/gms/measurement/internal/zzfz;

    move-result-object v12

    .line 107
    invoke-virtual {v12, v9}, Lcom/google/android/gms/measurement/internal/zzfz;->y(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_33b

    iget-object v12, v7, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 108
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v12

    .line 109
    invoke-virtual {v12}, Lcom/google/android/gms/measurement/internal/zzey;->l()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v12

    const-string v14, "Turning off ad personalization due to account type"

    invoke-virtual {v12, v14}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    .line 110
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 111
    :goto_2ff
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_31d

    const-string v14, "_npa"

    .line 112
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v5, v17

    check-cast v5, Lcom/google/android/gms/measurement/internal/b4;

    .line 113
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/b4;->c:Ljava/lang/String;

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31b

    .line 114
    invoke-interface {v12}, Ljava/util/Iterator;->remove()V

    goto :goto_31d

    :cond_31b
    const/4 v5, 0x0

    goto :goto_2ff

    :cond_31d
    :goto_31d
    new-instance v5, Lcom/google/android/gms/measurement/internal/b4;

    const-string v19, "auto"

    const-string v20, "_npa"

    iget-object v7, v7, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 115
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgi;->x()Lcom/google/android/gms/common/util/Clock;

    move-result-object v7

    .line 116
    invoke-interface {v7}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v21

    .line 117
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v17, v5

    move-object/from16 v18, v9

    invoke-direct/range {v17 .. v23}, Lcom/google/android/gms/measurement/internal/b4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 118
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_33b
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/google/android/gms/internal/measurement/zzgl;

    const/4 v7, 0x0

    .line 120
    :goto_342
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_380

    .line 121
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgl;->x()Lcom/google/android/gms/internal/measurement/zzgk;

    move-result-object v9

    .line 122
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/measurement/internal/b4;

    iget-object v12, v12, Lcom/google/android/gms/measurement/internal/b4;->c:Ljava/lang/String;

    invoke-virtual {v9, v12}, Lcom/google/android/gms/internal/measurement/zzgk;->w(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgk;

    .line 123
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/gms/measurement/internal/b4;

    iget-wide v10, v12, Lcom/google/android/gms/measurement/internal/b4;->d:J

    invoke-virtual {v9, v10, v11}, Lcom/google/android/gms/internal/measurement/zzgk;->x(J)Lcom/google/android/gms/internal/measurement/zzgk;

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    .line 124
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/zzli;->e0()Lcom/google/android/gms/measurement/internal/zzlk;

    move-result-object v10

    .line 125
    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/gms/measurement/internal/b4;

    iget-object v11, v11, Lcom/google/android/gms/measurement/internal/b4;->e:Ljava/lang/Object;

    invoke-virtual {v10, v9, v11}, Lcom/google/android/gms/measurement/internal/zzlk;->I(Lcom/google/android/gms/internal/measurement/zzgk;Ljava/lang/Object;)V

    .line 126
    invoke-virtual {v9}, Lcom/google/android/gms/internal/measurement/zzjy;->o()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/measurement/zzgl;

    aput-object v9, v5, v7

    add-int/lit8 v7, v7, 0x1

    const-wide/16 v10, 0x1

    goto :goto_342

    .line 127
    :cond_380
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v15, v5}, Lcom/google/android/gms/internal/measurement/zzgb;->A0(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzgb;

    .line 128
    invoke-static {v3}, Lcom/google/android/gms/measurement/internal/zzez;->b(Lcom/google/android/gms/measurement/internal/zzav;)Lcom/google/android/gms/measurement/internal/zzez;

    move-result-object v5

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 129
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgi;->L()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v7

    iget-object v8, v5, Lcom/google/android/gms/measurement/internal/zzez;->d:Landroid/os/Bundle;

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    .line 130
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/zzli;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v9

    .line 131
    invoke-virtual {v9, v13}, Lcom/google/android/gms/measurement/internal/e;->O(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 132
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/measurement/internal/zzlp;->v(Landroid/os/Bundle;Landroid/os/Bundle;)V

    iget-object v7, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 133
    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/zzgi;->L()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v7

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 134
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v8

    .line 135
    invoke-virtual {v8, v13}, Lcom/google/android/gms/measurement/internal/zzaf;->i(Ljava/lang/String;)I

    move-result v8

    .line 136
    invoke-virtual {v7, v5, v8}, Lcom/google/android/gms/measurement/internal/zzlp;->w(Lcom/google/android/gms/measurement/internal/zzez;I)V

    iget-object v14, v5, Lcom/google/android/gms/measurement/internal/zzez;->d:Landroid/os/Bundle;

    const-string v5, "_c"

    const-wide/16 v7, 0x1

    .line 137
    invoke-virtual {v14, v5, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 138
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v5

    .line 139
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzey;->l()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v5

    const-string v7, "Marking in-app purchase as real-time"

    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/zzew;->a(Ljava/lang/String;)V

    const-wide/16 v7, 0x1

    .line 140
    invoke-virtual {v14, v0, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v5, "_o"

    .line 141
    iget-object v7, v3, Lcom/google/android/gms/measurement/internal/zzav;->q:Ljava/lang/String;

    invoke-virtual {v14, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 142
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgi;->L()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v5

    .line 143
    invoke-virtual {v15}, Lcom/google/android/gms/internal/measurement/zzgb;->n0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/android/gms/measurement/internal/zzlp;->R(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_401

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 144
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgi;->L()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v5

    const-wide/16 v7, 0x1

    .line 145
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "_dbg"

    invoke-virtual {v5, v14, v8, v7}, Lcom/google/android/gms/measurement/internal/zzlp;->z(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 146
    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/zzgi;->L()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v5

    .line 147
    invoke-virtual {v5, v14, v0, v7}, Lcom/google/android/gms/measurement/internal/zzlp;->z(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_401
    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    .line 148
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzli;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v0

    .line 149
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzav;->o:Ljava/lang/String;

    invoke-virtual {v0, v13, v5}, Lcom/google/android/gms/measurement/internal/e;->T(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/h;

    move-result-object v0

    if-nez v0, :cond_444

    new-instance v0, Lcom/google/android/gms/measurement/internal/h;

    .line 150
    iget-object v5, v3, Lcom/google/android/gms/measurement/internal/zzav;->o:Ljava/lang/String;

    iget-wide v11, v3, Lcom/google/android/gms/measurement/internal/zzav;->r:J

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v17, 0x0

    move-wide/from16 v21, v11

    move-wide/from16 v11, v17

    const-wide/16 v16, 0x0

    move-object/from16 v28, v15

    move-wide/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v23, v4

    move-object v4, v0

    move-object/from16 v27, v5

    move-object v5, v13

    move-object/from16 v29, v6

    move-object/from16 v6, v27

    move-object/from16 v26, v13

    move-object/from16 v27, v14

    const/4 v1, 0x0

    move-wide/from16 v13, v21

    .line 151
    invoke-direct/range {v4 .. v20}, Lcom/google/android/gms/measurement/internal/h;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    move-wide/from16 v11, v24

    goto :goto_458

    :cond_444
    move-object/from16 v23, v4

    move-object/from16 v29, v6

    move-object/from16 v26, v13

    move-object/from16 v27, v14

    move-object/from16 v28, v15

    const/4 v1, 0x0

    .line 152
    iget-wide v4, v0, Lcom/google/android/gms/measurement/internal/h;->f:J

    .line 153
    iget-wide v6, v3, Lcom/google/android/gms/measurement/internal/zzav;->r:J

    .line 154
    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/measurement/internal/h;->c(J)Lcom/google/android/gms/measurement/internal/h;

    move-result-object v0

    move-wide v11, v4

    .line 155
    :goto_458
    iget-object v4, v2, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    .line 156
    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzli;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v4

    .line 157
    invoke-virtual {v4, v0}, Lcom/google/android/gms/measurement/internal/e;->l(Lcom/google/android/gms/measurement/internal/h;)V

    new-instance v14, Lcom/google/android/gms/measurement/internal/zzaq;

    iget-object v5, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 158
    iget-object v6, v3, Lcom/google/android/gms/measurement/internal/zzav;->q:Ljava/lang/String;

    iget-object v8, v3, Lcom/google/android/gms/measurement/internal/zzav;->o:Ljava/lang/String;

    iget-wide v9, v3, Lcom/google/android/gms/measurement/internal/zzav;->r:J

    move-object v4, v14

    move-object/from16 v7, v26

    move-object/from16 v13, v27

    invoke-direct/range {v4 .. v13}, Lcom/google/android/gms/measurement/internal/zzaq;-><init>(Lcom/google/android/gms/measurement/internal/zzgi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    .line 159
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfs;->y()Lcom/google/android/gms/internal/measurement/zzfr;

    move-result-object v4

    iget-wide v5, v14, Lcom/google/android/gms/measurement/internal/zzaq;->d:J

    .line 160
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzfr;->D(J)Lcom/google/android/gms/internal/measurement/zzfr;

    iget-object v5, v14, Lcom/google/android/gms/measurement/internal/zzaq;->b:Ljava/lang/String;

    .line 161
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/measurement/zzfr;->z(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfr;

    iget-wide v5, v14, Lcom/google/android/gms/measurement/internal/zzaq;->e:J

    .line 162
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/measurement/zzfr;->C(J)Lcom/google/android/gms/internal/measurement/zzfr;

    iget-object v5, v14, Lcom/google/android/gms/measurement/internal/zzaq;->f:Lcom/google/android/gms/measurement/internal/zzat;

    new-instance v6, Lcom/google/android/gms/measurement/internal/i;

    .line 163
    invoke-direct {v6, v5}, Lcom/google/android/gms/measurement/internal/i;-><init>(Lcom/google/android/gms/measurement/internal/zzat;)V

    .line 164
    :cond_48d
    :goto_48d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4b3

    .line 165
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/i;->a()Ljava/lang/String;

    move-result-object v5

    .line 166
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfw;->y()Lcom/google/android/gms/internal/measurement/zzfv;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/measurement/zzfv;->A(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzfv;

    iget-object v8, v14, Lcom/google/android/gms/measurement/internal/zzaq;->f:Lcom/google/android/gms/measurement/internal/zzat;

    .line 167
    invoke-virtual {v8, v5}, Lcom/google/android/gms/measurement/internal/zzat;->a4(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_48d

    iget-object v8, v2, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    .line 168
    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/zzli;->e0()Lcom/google/android/gms/measurement/internal/zzlk;

    move-result-object v8

    .line 169
    invoke-virtual {v8, v7, v5}, Lcom/google/android/gms/measurement/internal/zzlk;->H(Lcom/google/android/gms/internal/measurement/zzfv;Ljava/lang/Object;)V

    .line 170
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/measurement/zzfr;->v(Lcom/google/android/gms/internal/measurement/zzfv;)Lcom/google/android/gms/internal/measurement/zzfr;

    goto :goto_48d

    :cond_4b3
    move-object/from16 v5, v28

    .line 171
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/measurement/zzgb;->B0(Lcom/google/android/gms/internal/measurement/zzfr;)Lcom/google/android/gms/internal/measurement/zzgb;

    .line 172
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzgf;->u()Lcom/google/android/gms/internal/measurement/zzgd;

    move-result-object v6

    .line 173
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzfu;->u()Lcom/google/android/gms/internal/measurement/zzft;

    move-result-object v7

    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/h;->c:J

    .line 174
    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/measurement/zzft;->r(J)Lcom/google/android/gms/internal/measurement/zzft;

    iget-object v0, v3, Lcom/google/android/gms/measurement/internal/zzav;->o:Ljava/lang/String;

    .line 175
    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/measurement/zzft;->s(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzft;

    .line 176
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/zzgd;->r(Lcom/google/android/gms/internal/measurement/zzft;)Lcom/google/android/gms/internal/measurement/zzgd;

    .line 177
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/measurement/zzgb;->W(Lcom/google/android/gms/internal/measurement/zzgd;)Lcom/google/android/gms/internal/measurement/zzgb;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    .line 178
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzli;->Q()Lcom/google/android/gms/measurement/internal/l4;

    move-result-object v6

    .line 179
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/measurement/internal/c0;->e0()Ljava/lang/String;

    move-result-object v7

    .line 180
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    .line 181
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgb;->q0()Ljava/util/List;

    move-result-object v9

    .line 182
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfr;->t()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    .line 183
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfr;->t()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 184
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/l4;->h(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/Long;Ljava/lang/Long;)Ljava/util/List;

    move-result-object v0

    .line 185
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzgb;->v0(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/measurement/zzgb;

    .line 186
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfr;->H()Z

    move-result v0

    if-eqz v0, :cond_50d

    .line 187
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfr;->t()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/zzgb;->f0(J)Lcom/google/android/gms/internal/measurement/zzgb;

    .line 188
    invoke-virtual {v4}, Lcom/google/android/gms/internal/measurement/zzfr;->t()J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/measurement/zzgb;->I(J)Lcom/google/android/gms/internal/measurement/zzgb;

    .line 189
    :cond_50d
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/measurement/internal/c0;->Y()J

    move-result-wide v3

    cmp-long v0, v3, v24

    if-eqz v0, :cond_518

    .line 190
    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/measurement/zzgb;->Y(J)Lcom/google/android/gms/internal/measurement/zzgb;

    .line 191
    :cond_518
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/measurement/internal/c0;->a0()J

    move-result-wide v6

    cmp-long v0, v6, v24

    if-eqz v0, :cond_524

    .line 192
    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/measurement/zzgb;->Z(J)Lcom/google/android/gms/internal/measurement/zzgb;

    goto :goto_52b

    :cond_524
    cmp-long v0, v3, v24

    if-eqz v0, :cond_52b

    .line 193
    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/measurement/zzgb;->Z(J)Lcom/google/android/gms/internal/measurement/zzgb;

    .line 194
    :cond_52b
    :goto_52b
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/measurement/internal/c0;->b()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpp;->b()Z

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 196
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzel;->J0:Lcom/google/android/gms/measurement/internal/zzek;

    .line 197
    invoke-virtual {v3, v1, v4}, Lcom/google/android/gms/measurement/internal/zzaf;->y(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzek;)Z

    move-result v3

    if-eqz v3, :cond_545

    if-eqz v0, :cond_545

    .line 198
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzgb;->e0(Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/zzgb;

    .line 199
    :cond_545
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/measurement/internal/c0;->e()V

    .line 200
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/gms/measurement/internal/c0;->Z()J

    move-result-wide v3

    long-to-int v0, v3

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzgb;->A(I)Lcom/google/android/gms/internal/measurement/zzgb;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 201
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->v()Lcom/google/android/gms/measurement/internal/zzaf;

    move-result-object v0

    .line 202
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->l()J

    const-wide/32 v3, 0xee48

    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/measurement/zzgb;->i0(J)Lcom/google/android/gms/internal/measurement/zzgb;

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 203
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzgi;->x()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 204
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v3

    invoke-virtual {v5, v3, v4}, Lcom/google/android/gms/internal/measurement/zzgb;->h0(J)Lcom/google/android/gms/internal/measurement/zzgb;

    const/4 v0, 0x1

    .line 205
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/measurement/zzgb;->d0(Z)Lcom/google/android/gms/internal/measurement/zzgb;

    move-object/from16 v0, v29

    .line 206
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/measurement/zzfz;->r(Lcom/google/android/gms/internal/measurement/zzgb;)Lcom/google/android/gms/internal/measurement/zzfz;

    .line 207
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgb;->t0()J

    move-result-wide v3

    move-object/from16 v6, v23

    invoke-virtual {v6, v3, v4}, Lcom/google/android/gms/measurement/internal/c0;->D(J)V

    .line 208
    invoke-virtual {v5}, Lcom/google/android/gms/internal/measurement/zzgb;->s0()J

    move-result-wide v3

    invoke-virtual {v6, v3, v4}, Lcom/google/android/gms/measurement/internal/c0;->B(J)V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    .line 209
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzli;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v3

    .line 210
    invoke-virtual {v3, v6}, Lcom/google/android/gms/measurement/internal/e;->k(Lcom/google/android/gms/measurement/internal/c0;)V

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    .line 211
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzli;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v3

    .line 212
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/e;->j()V
    :try_end_597
    .catchall {:try_start_240 .. :try_end_597} :catchall_5e7

    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    .line 213
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzli;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v3

    .line 214
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/e;->e0()V

    :try_start_5a0
    iget-object v3, v2, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    .line 215
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzli;->e0()Lcom/google/android/gms/measurement/internal/zzlk;

    move-result-object v3

    .line 216
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzjy;->o()Lcom/google/android/gms/internal/measurement/zzkc;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzil;->h()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/measurement/internal/zzlk;->M([B)[B

    move-result-object v14
    :try_end_5b4
    .catch Ljava/io/IOException; {:try_start_5a0 .. :try_end_5b4} :catch_5b5

    goto :goto_5e6

    :catch_5b5
    move-exception v0

    .line 217
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 218
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v2

    .line 219
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzey;->m()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v2

    invoke-static/range {v26 .. v26}, Lcom/google/android/gms/measurement/internal/zzey;->v(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Data loss. Failed to bundle and serialize. appId"

    .line 220
    invoke-virtual {v2, v4, v3, v0}, Lcom/google/android/gms/measurement/internal/zzew;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v14, v1

    goto :goto_5e6

    :catch_5cb
    move-exception v0

    .line 221
    :try_start_5cc
    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/y0;->a:Lcom/google/android/gms/measurement/internal/zzgi;

    .line 222
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzgi;->U()Lcom/google/android/gms/measurement/internal/zzey;

    move-result-object v1

    .line 223
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzey;->l()Lcom/google/android/gms/measurement/internal/zzew;

    move-result-object v1

    const-string v3, "app instance id encryption failed"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/measurement/internal/zzew;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x0

    new-array v14, v1, [B
    :try_end_5e2
    .catchall {:try_start_5cc .. :try_end_5e2} :catchall_5e7

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    goto/16 :goto_9d

    :goto_5e6
    return-object v14

    :catchall_5e7
    move-exception v0

    .line 224
    iget-object v1, v2, Lcom/google/android/gms/measurement/internal/q3;->b:Lcom/google/android/gms/measurement/internal/zzli;

    .line 225
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzli;->T()Lcom/google/android/gms/measurement/internal/e;

    move-result-object v1

    .line 226
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/e;->e0()V

    .line 227
    goto :goto_5f3

    :goto_5f2
    throw v0

    :goto_5f3
    goto :goto_5f2
.end method
