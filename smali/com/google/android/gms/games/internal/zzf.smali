###### Class com.google.android.gms.games.internal.zzf (com.google.android.gms.games.internal.zzf)
.class public Lcom/google/android/gms/games/internal/zzf;
.super Lcom/google/android/gms/common/internal/GmsClient;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/internal/zzf$s;,
        Lcom/google/android/gms/games/internal/zzf$x0;,
        Lcom/google/android/gms/games/internal/zzf$r;,
        Lcom/google/android/gms/games/internal/zzf$u0;,
        Lcom/google/android/gms/games/internal/zzf$e0;,
        Lcom/google/android/gms/games/internal/zzf$k;,
        Lcom/google/android/gms/games/internal/zzf$u;,
        Lcom/google/android/gms/games/internal/zzf$f0;,
        Lcom/google/android/gms/games/internal/zzf$c0;,
        Lcom/google/android/gms/games/internal/zzf$d0;,
        Lcom/google/android/gms/games/internal/zzf$j0;,
        Lcom/google/android/gms/games/internal/zzf$h0;,
        Lcom/google/android/gms/games/internal/zzf$l;,
        Lcom/google/android/gms/games/internal/zzf$i;,
        Lcom/google/android/gms/games/internal/zzf$d;,
        Lcom/google/android/gms/games/internal/zzf$o;,
        Lcom/google/android/gms/games/internal/zzf$y;,
        Lcom/google/android/gms/games/internal/zzf$g;,
        Lcom/google/android/gms/games/internal/zzf$e;,
        Lcom/google/android/gms/games/internal/zzf$f;,
        Lcom/google/android/gms/games/internal/zzf$o0;,
        Lcom/google/android/gms/games/internal/zzf$b;,
        Lcom/google/android/gms/games/internal/zzf$c;,
        Lcom/google/android/gms/games/internal/zzf$x;,
        Lcom/google/android/gms/games/internal/zzf$w0;,
        Lcom/google/android/gms/games/internal/zzf$m0;,
        Lcom/google/android/gms/games/internal/zzf$g0;,
        Lcom/google/android/gms/games/internal/zzf$w;,
        Lcom/google/android/gms/games/internal/zzf$t;,
        Lcom/google/android/gms/games/internal/zzf$v;,
        Lcom/google/android/gms/games/internal/zzf$h;,
        Lcom/google/android/gms/games/internal/zzf$m;,
        Lcom/google/android/gms/games/internal/zzf$j;,
        Lcom/google/android/gms/games/internal/zzf$n;,
        Lcom/google/android/gms/games/internal/zzf$p;,
        Lcom/google/android/gms/games/internal/zzf$q;,
        Lcom/google/android/gms/games/internal/zzf$t0;,
        Lcom/google/android/gms/games/internal/zzf$r0;,
        Lcom/google/android/gms/games/internal/zzf$p0;,
        Lcom/google/android/gms/games/internal/zzf$v0;,
        Lcom/google/android/gms/games/internal/zzf$q0;,
        Lcom/google/android/gms/games/internal/zzf$s0;,
        Lcom/google/android/gms/games/internal/zzf$l0;,
        Lcom/google/android/gms/games/internal/zzf$i0;,
        Lcom/google/android/gms/games/internal/zzf$n0;,
        Lcom/google/android/gms/games/internal/zzf$a0;,
        Lcom/google/android/gms/games/internal/zzf$b0;,
        Lcom/google/android/gms/games/internal/zzf$a;,
        Lcom/google/android/gms/games/internal/zzf$z;,
        Lcom/google/android/gms/games/internal/zzf$k0;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/GmsClient<",
        "Lcom/google/android/gms/games/internal/zzac;",
        ">;"
    }
.end annotation


# instance fields
.field private final W:Lcom/google/android/gms/internal/games/zzfe;

.field private final X:Ljava/lang/String;

.field private Y:Lcom/google/android/gms/games/PlayerEntity;

.field private Z:Lcom/google/android/gms/games/GameEntity;

.field private final a0:Lcom/google/android/gms/games/internal/zzae;

.field private b0:Z

.field private final c0:J

.field private d0:Z

.field private final e0:Lcom/google/android/gms/games/Games$GamesOptions;

.field private f0:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/games/Games$GamesOptions;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V
    .registers 14

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/internal/ConnectionCallbacks;Lcom/google/android/gms/common/api/internal/OnConnectionFailedListener;)V

    .line 2
    new-instance p2, Lcom/google/android/gms/games/internal/a;

    invoke-direct {p2, p0}, Lcom/google/android/gms/games/internal/a;-><init>(Lcom/google/android/gms/games/internal/zzf;)V

    iput-object p2, p0, Lcom/google/android/gms/games/internal/zzf;->W:Lcom/google/android/gms/internal/games/zzfe;

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lcom/google/android/gms/games/internal/zzf;->b0:Z

    .line 4
    iput-boolean p2, p0, Lcom/google/android/gms/games/internal/zzf;->d0:Z

    .line 5
    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/ClientSettings;->g()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/games/internal/zzf;->X:Ljava/lang/String;

    .line 6
    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/ClientSettings;->f()I

    move-result p2

    invoke-static {p0, p2}, Lcom/google/android/gms/games/internal/zzae;->b(Lcom/google/android/gms/games/internal/zzf;I)Lcom/google/android/gms/games/internal/zzae;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/games/internal/zzf;->a0:Lcom/google/android/gms/games/internal/zzae;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    int-to-long p5, p2

    iput-wide p5, p0, Lcom/google/android/gms/games/internal/zzf;->c0:J

    .line 8
    iput-object p4, p0, Lcom/google/android/gms/games/internal/zzf;->e0:Lcom/google/android/gms/games/Games$GamesOptions;

    .line 9
    iget-boolean p2, p4, Lcom/google/android/gms/games/Games$GamesOptions;->v:Z

    if-nez p2, :cond_44

    .line 10
    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/ClientSettings;->i()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_3d

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_44

    .line 11
    :cond_3d
    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/ClientSettings;->i()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zzf;->y0(Landroid/view/View;)V

    :cond_44
    return-void
.end method

.method private static E0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "TR;>;",
            "Ljava/lang/SecurityException;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_a

    const/4 p1, 0x4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/games/GamesClientStatusCodes;->b(I)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 2
    invoke-interface {p0, p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;->a(Lcom/google/android/gms/common/api/Status;)V

    :cond_a
    return-void
.end method

.method private static F1(Lcom/google/android/gms/tasks/TaskCompletionSource;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "TR;>;I)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/games/GamesStatusCodes;->b(I)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->X3()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_15b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_158

    const/4 v1, 0x4

    if-eq v0, v1, :cond_155

    const/4 v1, 0x5

    if-eq v0, v1, :cond_152

    const/4 v1, 0x6

    if-eq v0, v1, :cond_14f

    const/4 v1, 0x7

    if-eq v0, v1, :cond_14c

    const/16 v1, 0x5dc

    if-eq v0, v1, :cond_149

    const/16 v1, 0x5dd

    if-eq v0, v1, :cond_146

    sparse-switch v0, :sswitch_data_19c

    packed-switch v0, :pswitch_data_1fe

    packed-switch v0, :pswitch_data_210

    packed-switch v0, :pswitch_data_21a

    packed-switch v0, :pswitch_data_226

    packed-switch v0, :pswitch_data_238

    packed-switch v0, :pswitch_data_246

    packed-switch v0, :pswitch_data_25a

    packed-switch v0, :pswitch_data_26e

    move v1, v0

    goto/16 :goto_160

    :pswitch_43
    const/16 v1, 0x67f5

    goto/16 :goto_160

    :pswitch_47
    const/16 v1, 0x67f4

    goto/16 :goto_160

    :pswitch_4b
    const/16 v1, 0x67f3

    goto/16 :goto_160

    :pswitch_4f
    const/16 v1, 0x67f2

    goto/16 :goto_160

    :pswitch_53
    const/16 v1, 0x67ef

    goto/16 :goto_160

    :pswitch_57
    const/16 v1, 0x67ee

    goto/16 :goto_160

    :pswitch_5b
    const/16 v1, 0x67ed

    goto/16 :goto_160

    :pswitch_5f
    const/16 v1, 0x67ec

    goto/16 :goto_160

    :pswitch_63
    const/16 v1, 0x67eb

    goto/16 :goto_160

    :pswitch_67
    const/16 v1, 0x67ea

    goto/16 :goto_160

    :pswitch_6b
    const/16 v1, 0x67e9

    goto/16 :goto_160

    :pswitch_6f
    const/16 v1, 0x67e8

    goto/16 :goto_160

    :pswitch_73
    const/16 v1, 0x67e5

    goto/16 :goto_160

    :pswitch_77
    const/16 v1, 0x67e4

    goto/16 :goto_160

    :pswitch_7b
    const/16 v1, 0x67e3

    goto/16 :goto_160

    :pswitch_7f
    const/16 v1, 0x67e2

    goto/16 :goto_160

    :pswitch_83
    const/16 v1, 0x67e1

    goto/16 :goto_160

    :pswitch_87
    const/16 v1, 0x67e0

    goto/16 :goto_160

    :pswitch_8b
    const/16 v1, 0x67df

    goto/16 :goto_160

    :pswitch_8f
    const/16 v1, 0x67de

    goto/16 :goto_160

    :pswitch_93
    const/16 v1, 0x67d8

    goto/16 :goto_160

    :pswitch_97
    const/16 v1, 0x67d7

    goto/16 :goto_160

    :pswitch_9b
    const/16 v1, 0x67d6

    goto/16 :goto_160

    :pswitch_9f
    const/16 v1, 0x67d5

    goto/16 :goto_160

    :pswitch_a3
    const/16 v1, 0x67d4

    goto/16 :goto_160

    :pswitch_a7
    const/16 v1, 0x67d0

    goto/16 :goto_160

    :pswitch_ab
    const/16 v1, 0x67cf

    goto/16 :goto_160

    :pswitch_af
    const/16 v1, 0x67ce

    goto/16 :goto_160

    :pswitch_b3
    const/16 v1, 0x67cd

    goto/16 :goto_160

    :pswitch_b7
    const/16 v1, 0x67cc

    goto/16 :goto_160

    :pswitch_bb
    const/16 v1, 0x67cb

    goto/16 :goto_160

    :pswitch_bf
    const/16 v1, 0x67ca

    goto/16 :goto_160

    :pswitch_c3
    const/16 v1, 0x67c3

    goto/16 :goto_160

    :pswitch_c7
    const/16 v1, 0x67c2

    goto/16 :goto_160

    :pswitch_cb
    const/16 v1, 0x67c1

    goto/16 :goto_160

    :pswitch_cf
    const/16 v1, 0x67c0

    goto/16 :goto_160

    :pswitch_d3
    const/16 v1, 0x67b8

    goto/16 :goto_160

    :pswitch_d7
    const/16 v1, 0x67b7

    goto/16 :goto_160

    :pswitch_db
    const/16 v1, 0x67b6

    goto/16 :goto_160

    :pswitch_df
    const/16 v1, 0x67a8

    goto/16 :goto_160

    :pswitch_e3
    const/16 v1, 0x67a7

    goto/16 :goto_160

    :pswitch_e7
    const/16 v1, 0x67a6

    goto/16 :goto_160

    :pswitch_eb
    const/16 v1, 0x67a5

    goto/16 :goto_160

    :pswitch_ef
    const/16 v1, 0x67a4

    goto/16 :goto_160

    :pswitch_f3
    const/16 v1, 0x67a3

    goto/16 :goto_160

    :pswitch_f7
    const/16 v1, 0x67a2

    goto/16 :goto_160

    :sswitch_fb
    const/16 v1, 0x6850

    goto/16 :goto_160

    :sswitch_ff
    const/16 v1, 0x684f

    goto/16 :goto_160

    :sswitch_103
    const/16 v1, 0x684e

    goto/16 :goto_160

    :sswitch_107
    const/16 v1, 0x684d

    goto/16 :goto_160

    :sswitch_10b
    const/16 v1, 0x684c

    goto/16 :goto_160

    :sswitch_10f
    const/16 v1, 0x681c

    goto/16 :goto_160

    :sswitch_113
    const/16 v1, 0x681a

    goto :goto_160

    :sswitch_116
    const/16 v1, 0x6808

    goto :goto_160

    :sswitch_119
    const/16 v1, 0x6807

    goto :goto_160

    :sswitch_11c
    const/16 v1, 0x6806

    goto :goto_160

    :sswitch_11f
    const/16 v1, 0x6805

    goto :goto_160

    :sswitch_122
    const/16 v1, 0x6804

    goto :goto_160

    :sswitch_125
    const/16 v1, 0x6803

    goto :goto_160

    :sswitch_128
    const/16 v1, 0x6802

    goto :goto_160

    :sswitch_12b
    const/16 v1, 0x6801

    goto :goto_160

    :sswitch_12e
    const/16 v1, 0x6800

    goto :goto_160

    :sswitch_131
    const/16 v1, 0x67ff

    goto :goto_160

    :sswitch_134
    const/16 v1, 0x67fe

    goto :goto_160

    :sswitch_137
    const/16 v1, 0x67fd

    goto :goto_160

    :sswitch_13a
    const/16 v1, 0x67fc

    goto :goto_160

    :sswitch_13d
    const/16 v1, 0x6798

    goto :goto_160

    :sswitch_140
    const/16 v1, 0x678d

    goto :goto_160

    :sswitch_143
    const/16 v1, 0x678c

    goto :goto_160

    :cond_146
    const/16 v1, 0x67ad

    goto :goto_160

    :cond_149
    const/16 v1, 0x67ac

    goto :goto_160

    :cond_14c
    :sswitch_14c
    const/16 v1, 0x678b

    goto :goto_160

    :cond_14f
    const/16 v1, 0x678a

    goto :goto_160

    :cond_152
    const/16 v1, 0x6789

    goto :goto_160

    :cond_155
    const/16 v1, 0x6788

    goto :goto_160

    :cond_158
    const/16 v1, 0x6787

    goto :goto_160

    :cond_15b
    const/16 v1, 0x6786

    goto :goto_160

    :cond_15e
    const/16 v1, 0x8

    .line 3
    :goto_160
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->X3()I

    move-result v2

    if-ne v1, v2, :cond_167

    goto :goto_193

    .line 4
    :cond_167
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->X3()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/games/GamesStatusCodes;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->Y3()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_182

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->W3()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/android/gms/games/GamesClientStatusCodes;->c(ILandroid/app/PendingIntent;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    goto :goto_193

    :cond_182
    packed-switch v0, :pswitch_data_27a

    .line 8
    :pswitch_185
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->Y3()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->W3()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    move-object p1, v0

    .line 9
    :goto_193
    :pswitch_193
    invoke-static {p1}, Lcom/google/android/gms/common/internal/ApiExceptionUtil;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Exception;)V

    return-void

    nop

    :sswitch_data_19c
    .sparse-switch
        0x7 -> :sswitch_14c
        0x8 -> :sswitch_143
        0x9 -> :sswitch_140
        0x1f4 -> :sswitch_13d
        0x2328 -> :sswitch_13a
        0x2329 -> :sswitch_137
        0x232a -> :sswitch_134
        0x232b -> :sswitch_131
        0x232c -> :sswitch_12e
        0x232e -> :sswitch_12b
        0x2331 -> :sswitch_128
        0x2332 -> :sswitch_125
        0x2333 -> :sswitch_122
        0x2334 -> :sswitch_11f
        0x2338 -> :sswitch_11c
        0x2339 -> :sswitch_119
        0x233a -> :sswitch_116
        0x23f0 -> :sswitch_113
        0x23f2 -> :sswitch_10f
        0x2710 -> :sswitch_10b
        0x2711 -> :sswitch_107
        0x2712 -> :sswitch_103
        0x2713 -> :sswitch_ff
        0x2714 -> :sswitch_fb
    .end sparse-switch

    :pswitch_data_1fe
    .packed-switch 0x3e8
        :pswitch_f7
        :pswitch_f3
        :pswitch_ef
        :pswitch_eb
        :pswitch_e7
        :pswitch_e3
        :pswitch_df
    .end packed-switch

    :pswitch_data_210
    .packed-switch 0x7d0
        :pswitch_db
        :pswitch_d7
        :pswitch_d3
    .end packed-switch

    :pswitch_data_21a
    .packed-switch 0xbb8
        :pswitch_cf
        :pswitch_cb
        :pswitch_c7
        :pswitch_c3
    .end packed-switch

    :pswitch_data_226
    .packed-switch 0xfa0
        :pswitch_bf
        :pswitch_bb
        :pswitch_b7
        :pswitch_b3
        :pswitch_af
        :pswitch_ab
        :pswitch_a7
    .end packed-switch

    :pswitch_data_238
    .packed-switch 0x1770
        :pswitch_a3
        :pswitch_9f
        :pswitch_9b
        :pswitch_97
        :pswitch_93
    .end packed-switch

    :pswitch_data_246
    .packed-switch 0x1964
        :pswitch_8f
        :pswitch_8b
        :pswitch_87
        :pswitch_83
        :pswitch_7f
        :pswitch_7b
        :pswitch_77
        :pswitch_73
    .end packed-switch

    :pswitch_data_25a
    .packed-switch 0x1b58
        :pswitch_6f
        :pswitch_6b
        :pswitch_67
        :pswitch_63
        :pswitch_5f
        :pswitch_5b
        :pswitch_57
        :pswitch_53
    .end packed-switch

    :pswitch_data_26e
    .packed-switch 0x1f40
        :pswitch_4f
        :pswitch_4b
        :pswitch_47
        :pswitch_43
    .end packed-switch

    :pswitch_data_27a
    .packed-switch 0x2
        :pswitch_193
        :pswitch_193
        :pswitch_193
        :pswitch_193
        :pswitch_193
        :pswitch_193
        :pswitch_193
        :pswitch_185
        :pswitch_193
    .end packed-switch
.end method

.method static synthetic L1(Ljava/lang/SecurityException;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/internal/zzf;->j1(Ljava/lang/SecurityException;)V

    return-void
.end method

.method static synthetic R0(Lcom/google/android/gms/games/internal/zzf;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/zzf;->T0(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method

.method private final T0(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "*>;)V"
        }
    .end annotation

    const/16 v0, 0x684f

    .line 1
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/internal/zzac;

    invoke-interface {v1}, Lcom/google/android/gms/games/internal/zzac;->k0()Landroid/app/PendingIntent;

    move-result-object v1

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/games/GamesClientStatusCodes;->c(ILandroid/app/PendingIntent;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/games/FriendsResolutionRequiredException;->c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/FriendsResolutionRequiredException;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Exception;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception v0

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic T1(Lcom/google/android/gms/tasks/TaskCompletionSource;I)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/games/internal/zzf;->F1(Lcom/google/android/gms/tasks/TaskCompletionSource;I)V

    return-void
.end method

.method private static X0(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "TR;>;",
            "Ljava/lang/SecurityException;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_f

    .line 1
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    const/4 v0, 0x4

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/games/GamesClientStatusCodes;->b(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Exception;)V

    :cond_f
    return-void
.end method

.method private static j1(Ljava/lang/SecurityException;)V
    .registers 3

    const-string v0, "GamesGmsClientImpl"

    const-string v1, "Is player signed out?"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/google/android/gms/games/internal/zzz;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static v0(Lcom/google/android/gms/games/internal/zzf$s;)Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/games/internal/zzf$s<",
            "TT;>;)",
            "Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/games/internal/j;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/internal/j;-><init>(Lcom/google/android/gms/games/internal/zzf$s;)V

    return-object v0
.end method

.method static synthetic v1(Lcom/google/android/gms/games/internal/zzf$s;)Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/internal/zzf;->v0(Lcom/google/android/gms/games/internal/zzf$s;)Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;

    move-result-object p0

    return-object p0
.end method

.method private static x0(Landroid/os/RemoteException;)V
    .registers 3

    const-string v0, "GamesGmsClientImpl"

    const-string v1, "service died"

    .line 1
    invoke-static {v0, v1, p0}, Lcom/google/android/gms/games/internal/zzz;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic x1(Landroid/os/RemoteException;)V
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/games/internal/zzf;->x0(Landroid/os/RemoteException;)V

    return-void
.end method


# virtual methods
.method public final A0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/games/video/Videos$CaptureAvailableResult;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    .line 2
    new-instance v1, Lcom/google/android/gms/games/internal/f;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/f;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 3
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/zzac;->Q7(Lcom/google/android/gms/games/internal/zzy;I)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p2

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->E0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final A1(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    .line 1
    :cond_4
    new-instance v0, Lcom/google/android/gms/games/internal/zzf$z;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/zzf$z;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    :goto_9
    move-object v2, v0

    .line 2
    :try_start_a
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/games/internal/zzac;

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf;->a0:Lcom/google/android/gms/games/internal/zzae;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzae;->e()Landroid/os/IBinder;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf;->a0:Lcom/google/android/gms/games/internal/zzae;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzae;->d()Landroid/os/Bundle;

    move-result-object v6

    move-object v3, p2

    move v4, p3

    .line 5
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/games/internal/zzac;->Y3(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_22
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception p2

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->E0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final B0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;IZZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;IZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    new-instance v1, Lcom/google/android/gms/games/internal/zzf$n;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzf$n;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 2
    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/zzac;->D2(Lcom/google/android/gms/games/internal/zzy;IZZ)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->E0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final B1(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;IIIZ)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;",
            ">;",
            "Ljava/lang/String;",
            "IIIZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/games/internal/zzac;

    new-instance v2, Lcom/google/android/gms/games/internal/zzf$q0;

    invoke-direct {v2, p1}, Lcom/google/android/gms/games/internal/zzf$q0;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 2
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/games/internal/zzac;->U1(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;IIIZ)V
    :try_end_14
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->E0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public C()Landroid/os/Bundle;
    .registers 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/zzac;->na()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 2
    const-class v1, Lcom/google/android/gms/games/internal/zzf;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/games/internal/zzf;->f0:Landroid/os/Bundle;
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_18

    :cond_17
    return-object v0

    :catch_18
    move-exception v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/games/internal/zzf;->x0(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final C0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;",
            ">;",
            "Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;",
            "II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    new-instance v1, Lcom/google/android/gms/games/internal/zzf$q0;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzf$q0;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->i()Lcom/google/android/gms/games/leaderboard/zza;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/games/leaderboard/zza;->a()Landroid/os/Bundle;

    move-result-object p2

    .line 3
    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/zzac;->v1(Lcom/google/android/gms/games/internal/zzy;Landroid/os/Bundle;II)V
    :try_end_16
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p2

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->E0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final C1(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    new-instance v1, Lcom/google/android/gms/games/internal/zzf$s0;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzf$s0;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 2
    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/zzac;->T5(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;Z)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->E0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final D0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$CommitSnapshotResult;",
            ">;",
            "Lcom/google/android/gms/games/snapshot/Snapshot;",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/google/android/gms/games/snapshot/Snapshot;->M3()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->isClosed()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Snapshot already closed"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->o(ZLjava/lang/Object;)V

    .line 3
    invoke-interface {p3}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->V1()Lcom/google/android/gms/common/data/BitmapTeleporter;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->D()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/data/BitmapTeleporter;->V3(Ljava/io/File;)V

    .line 5
    :cond_20
    invoke-interface {v0}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->y1()Lcom/google/android/gms/drive/Contents;

    move-result-object v1

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->close()V

    .line 7
    :try_start_27
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    .line 8
    new-instance v2, Lcom/google/android/gms/games/internal/b;

    invoke-direct {v2, p1}, Lcom/google/android/gms/games/internal/b;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 9
    invoke-interface {p2}, Lcom/google/android/gms/games/snapshot/Snapshot;->i1()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->R3()Ljava/lang/String;

    move-result-object p2

    check-cast p3, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;

    .line 10
    invoke-interface {v0, v2, p2, p3, v1}, Lcom/google/android/gms/games/internal/zzac;->M1(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;Lcom/google/android/gms/drive/Contents;)V
    :try_end_3f
    .catch Ljava/lang/SecurityException; {:try_start_27 .. :try_end_3f} :catch_40

    return-void

    :catch_40
    move-exception p2

    .line 11
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->E0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final D1(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    new-instance v1, Lcom/google/android/gms/games/internal/zzf$s0;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzf$s0;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 2
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/zzac;->k7(Lcom/google/android/gms/games/internal/zzy;Z)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->E0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final E1(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/Game;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    new-instance v1, Lcom/google/android/gms/games/internal/zzf$n0;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzf$n0;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/internal/zzac;->r8(Lcom/google/android/gms/games/internal/zzy;)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception v0

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/games/internal/zzf;->X0(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method protected F()Landroid/os/Bundle;
    .registers 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->D()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzf;->e0:Lcom/google/android/gms/games/Games$GamesOptions;

    invoke-virtual {v1}, Lcom/google/android/gms/games/Games$GamesOptions;->c()Landroid/os/Bundle;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/games/internal/zzf;->X:Ljava/lang/String;

    const-string v3, "com.google.android.gms.games.key.gamePackageName"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.google.android.gms.games.key.desiredLocale"

    .line 4
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/google/android/gms/common/internal/BinderWrapper;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/zzf;->a0:Lcom/google/android/gms/games/internal/zzae;

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/zzae;->e()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/internal/BinderWrapper;-><init>(Landroid/os/IBinder;)V

    const-string v2, "com.google.android.gms.games.key.popupWindowToken"

    .line 7
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "com.google.android.gms.games.key.API_VERSION"

    .line 8
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_41

    const/16 v2, 0x8

    .line 9
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    :cond_41
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/GmsClient;->o0()Lcom/google/android/gms/common/internal/ClientSettings;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/signin/internal/SignInClientImpl;->r0(Lcom/google/android/gms/common/internal/ClientSettings;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "com.google.android.gms.games.key.signInOptions"

    .line 11
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v1
.end method

.method public final F0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    .line 1
    :cond_4
    new-instance v0, Lcom/google/android/gms/games/internal/zzf$z;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/zzf$z;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 2
    :goto_9
    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/internal/zzac;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/zzf;->a0:Lcom/google/android/gms/games/internal/zzae;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/zzae;->e()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/games/internal/zzf;->a0:Lcom/google/android/gms/games/internal/zzae;

    invoke-virtual {v3}, Lcom/google/android/gms/games/internal/zzae;->d()Landroid/os/Bundle;

    move-result-object v3

    .line 4
    invoke-interface {v1, v0, p2, v2, v3}, Lcom/google/android/gms/games/internal/zzac;->oa(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_1e
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception p2

    .line 5
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->E0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final G0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    .line 1
    :cond_4
    new-instance v0, Lcom/google/android/gms/games/internal/zzf$z;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/zzf$z;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    :goto_9
    move-object v2, v0

    .line 2
    :try_start_a
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/games/internal/zzac;

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf;->a0:Lcom/google/android/gms/games/internal/zzae;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzae;->e()Landroid/os/IBinder;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf;->a0:Lcom/google/android/gms/games/internal/zzae;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzae;->d()Landroid/os/Bundle;

    move-result-object v6

    move-object v3, p2

    move v4, p3

    .line 5
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/games/internal/zzac;->B2(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_22
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception p2

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->E0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final G1(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    .line 1
    :cond_4
    new-instance v0, Lcom/google/android/gms/games/internal/zzf$b0;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/zzf$b0;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    :goto_9
    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/internal/zzac;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/zzf;->a0:Lcom/google/android/gms/games/internal/zzae;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/zzae;->e()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/games/internal/zzf;->a0:Lcom/google/android/gms/games/internal/zzae;

    invoke-virtual {v3}, Lcom/google/android/gms/games/internal/zzae;->d()Landroid/os/Bundle;

    move-result-object v3

    .line 4
    invoke-interface {v1, v0, p2, v2, v3}, Lcom/google/android/gms/games/internal/zzac;->ea(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_1e
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception p2

    .line 5
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->X0(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final H0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;IIIZ)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;",
            ">;",
            "Ljava/lang/String;",
            "IIIZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/games/internal/zzac;

    new-instance v2, Lcom/google/android/gms/games/internal/zzf$q0;

    invoke-direct {v2, p1}, Lcom/google/android/gms/games/internal/zzf$q0;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 2
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/games/internal/zzac;->B5(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;IIIZ)V
    :try_end_14
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->E0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final H1(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    .line 1
    :cond_4
    new-instance v0, Lcom/google/android/gms/games/internal/zzf$a;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/zzf$a;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    :goto_9
    move-object v2, v0

    .line 2
    :try_start_a
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/games/internal/zzac;

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf;->a0:Lcom/google/android/gms/games/internal/zzae;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzae;->e()Landroid/os/IBinder;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf;->a0:Lcom/google/android/gms/games/internal/zzae;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzae;->d()Landroid/os/Bundle;

    move-result-object v6

    move-object v3, p2

    move v4, p3

    .line 5
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/games/internal/zzac;->Y3(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_22
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception p2

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->X0(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final I0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;IZZ)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;",
            "Ljava/lang/String;",
            "IZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "played_with"

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "friends_all"

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Invalid player collection: "

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p4

    if-eqz p4, :cond_1f

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_24

    :cond_1f
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_24
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_28
    :try_start_28
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/games/internal/zzac;

    new-instance v2, Lcom/google/android/gms/games/internal/zzf$n;

    invoke-direct {v2, p1}, Lcom/google/android/gms/games/internal/zzf$n;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 5
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/games/internal/zzac;->Q6(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;IZZ)V
    :try_end_3b
    .catch Ljava/lang/SecurityException; {:try_start_28 .. :try_end_3b} :catch_3c

    return-void

    :catch_3c
    move-exception p2

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->E0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final I1(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;IIIZ)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;",
            ">;>;",
            "Ljava/lang/String;",
            "IIIZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/games/internal/zzac;

    new-instance v2, Lcom/google/android/gms/games/internal/zzf$t0;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/games/internal/zzf$t0;-><init>(Lcom/google/android/gms/games/internal/zzf;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 2
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/games/internal/zzac;->U1(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;IIIZ)V
    :try_end_14
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->X0(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method protected J()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    return-object v0
.end method

.method public final J0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;JLjava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$SubmitScoreResult;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    .line 1
    :cond_4
    new-instance v0, Lcom/google/android/gms/games/internal/l;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/l;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    :goto_9
    move-object v2, v0

    .line 2
    :try_start_a
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/games/internal/zzac;

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/games/internal/zzac;->O3(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->E0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final J1(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboard;",
            ">;>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    new-instance v1, Lcom/google/android/gms/games/internal/zzf$p0;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzf$p0;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/zzac;->T5(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;Z)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->X0(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method protected K()Ljava/lang/String;
    .registers 2

    const-string v0, "com.google.android.gms.games.service.START"

    return-object v0
.end method

.method public final K0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadPlayerScoreResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    .line 2
    new-instance v1, Lcom/google/android/gms/games/internal/m;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/m;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    const/4 v2, 0x0

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 3
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/games/internal/zzac;->Ga(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p2

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->E0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final K1(Lcom/google/android/gms/tasks/TaskCompletionSource;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;",
            ">;>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    new-instance v1, Lcom/google/android/gms/games/internal/zzf$v0;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzf$v0;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/zzac;->k7(Lcom/google/android/gms/games/internal/zzy;Z)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->X0(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final L0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/games/snapshot/SnapshotContents;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;",
            "Lcom/google/android/gms/games/snapshot/SnapshotContents;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-interface {p5}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->isClosed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "SnapshotContents already closed"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->o(ZLjava/lang/Object;)V

    .line 2
    invoke-interface {p4}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->V1()Lcom/google/android/gms/common/data/BitmapTeleporter;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->D()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/data/BitmapTeleporter;->V3(Ljava/io/File;)V

    .line 4
    :cond_1c
    invoke-interface {p5}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->y1()Lcom/google/android/gms/drive/Contents;

    move-result-object v7

    .line 5
    invoke-interface {p5}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->close()V

    .line 6
    :try_start_23
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object p5

    move-object v2, p5

    check-cast v2, Lcom/google/android/gms/games/internal/zzac;

    new-instance v3, Lcom/google/android/gms/games/internal/zzf$t;

    invoke-direct {v3, p1}, Lcom/google/android/gms/games/internal/zzf$t;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    move-object v6, p4

    check-cast v6, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;

    move-object v4, p2

    move-object v5, p3

    .line 7
    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/games/internal/zzac;->Ja(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;Lcom/google/android/gms/drive/Contents;)V
    :try_end_37
    .catch Ljava/lang/SecurityException; {:try_start_23 .. :try_end_37} :catch_38

    return-void

    :catch_38
    move-exception p2

    .line 8
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->E0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final M0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    new-instance v1, Lcom/google/android/gms/games/internal/zzf$n;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzf$n;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 2
    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/zzac;->N4(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;Z)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->E0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final M1(Ljava/lang/String;I)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf;->W:Lcom/google/android/gms/internal/games/zzfe;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/games/zzfe;->c(Ljava/lang/String;I)V

    return-void
.end method

.method public final N0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;ZI)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;",
            ">;",
            "Ljava/lang/String;",
            "ZI)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    new-instance v1, Lcom/google/android/gms/games/internal/zzf$t;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzf$t;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 2
    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/zzac;->j3(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;ZI)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->E0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final N1()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    iget-wide v1, p0, Lcom/google/android/gms/games/internal/zzf;->c0:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/internal/zzac;->W(J)V

    return-void
.end method

.method public final O0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    new-instance v1, Lcom/google/android/gms/games/internal/zzf$n;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzf$n;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/zzac;->P5(Lcom/google/android/gms/games/internal/zzy;Z)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p2

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->E0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method final O1()V
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2
    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/zzac;->m1()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/games/internal/zzf;->x0(Landroid/os/RemoteException;)V

    :cond_14
    return-void
.end method

.method public synthetic P(Landroid/os/IInterface;)V
    .registers 6

    .line 1
    check-cast p1, Lcom/google/android/gms/games/internal/zzac;

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->P(Landroid/os/IInterface;)V

    .line 3
    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/zzf;->b0:Z

    if-eqz v0, :cond_11

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf;->a0:Lcom/google/android/gms/games/internal/zzae;

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzae;->g()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/zzf;->b0:Z

    .line 6
    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf;->e0:Lcom/google/android/gms/games/Games$GamesOptions;

    iget-boolean v1, v0, Lcom/google/android/gms/games/Games$GamesOptions;->o:Z

    if-nez v1, :cond_35

    iget-boolean v0, v0, Lcom/google/android/gms/games/Games$GamesOptions;->v:Z

    if-nez v0, :cond_35

    .line 7
    :try_start_1b
    new-instance v0, Lcom/google/android/gms/internal/games/zzfi;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzf;->a0:Lcom/google/android/gms/games/internal/zzae;

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/games/internal/zzae;->f()Lcom/google/android/gms/internal/games/zzfg;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/games/zzfi;-><init>(Lcom/google/android/gms/internal/games/zzfg;)V

    .line 9
    new-instance v1, Lcom/google/android/gms/games/internal/k;

    invoke-direct {v1, v0}, Lcom/google/android/gms/games/internal/k;-><init>(Lcom/google/android/gms/internal/games/zzfi;)V

    .line 10
    iget-wide v2, p0, Lcom/google/android/gms/games/internal/zzf;->c0:J

    .line 11
    invoke-interface {p1, v1, v2, v3}, Lcom/google/android/gms/games/internal/zzac;->S5(Lcom/google/android/gms/games/internal/zzaa;J)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_30} :catch_31

    return-void

    :catch_31
    move-exception p1

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/games/internal/zzf;->x0(Landroid/os/RemoteException;)V

    :cond_35
    return-void
.end method

.method public final varargs P0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Z[Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/games/event/Events$LoadEventsResult;",
            ">;Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf;->W:Lcom/google/android/gms/internal/games/zzfe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/games/zzfe;->a()V

    .line 2
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    new-instance v1, Lcom/google/android/gms/games/internal/zzf$i0;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzf$i0;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 3
    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/zzac;->H6(Lcom/google/android/gms/games/internal/zzy;Z[Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p2

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->E0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final P1(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/games/video/Videos$CaptureCapabilitiesResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    .line 2
    new-instance v1, Lcom/google/android/gms/games/internal/d;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/d;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 3
    invoke-interface {v0, v1}, Lcom/google/android/gms/games/internal/zzac;->k9(Lcom/google/android/gms/games/internal/zzy;)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception v0

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/games/internal/zzf;->E0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public Q(Lcom/google/android/gms/common/ConnectionResult;)V
    .registers 2

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->Q(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/games/internal/zzf;->b0:Z

    return-void
.end method

.method public final Q0(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/ListenerHolder<",
            "Lcom/google/android/gms/games/VideosClient$OnCaptureOverlayStateListener;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    .line 2
    new-instance v1, Lcom/google/android/gms/games/internal/i;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/i;-><init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V

    .line 3
    iget-wide v2, p0, Lcom/google/android/gms/games/internal/zzf;->c0:J

    .line 4
    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/zzac;->M7(Lcom/google/android/gms/games/internal/zzy;J)V

    return-void
.end method

.method public final Q1(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$DeleteSnapshotResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    .line 2
    new-instance v1, Lcom/google/android/gms/games/internal/e;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/e;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 3
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/zzac;->r6(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p2

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->E0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final R1(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    .line 2
    new-instance v1, Lcom/google/android/gms/games/internal/o;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/o;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 3
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/zzac;->y8(Lcom/google/android/gms/games/internal/zzy;Z)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p2

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->E0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method protected S(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .registers 6

    if-nez p1, :cond_2b

    if-eqz p3, :cond_2b

    .line 1
    const-class v0, Lcom/google/android/gms/games/internal/zzf;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "show_welcome_popup"

    .line 2
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/zzf;->b0:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/zzf;->d0:Z

    const-string v0, "com.google.android.gms.games.current_player"

    .line 4
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/PlayerEntity;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/zzf;->Y:Lcom/google/android/gms/games/PlayerEntity;

    const-string v0, "com.google.android.gms.games.current_game"

    .line 5
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/GameEntity;

    iput-object v0, p0, Lcom/google/android/gms/games/internal/zzf;->Z:Lcom/google/android/gms/games/GameEntity;

    .line 6
    :cond_2b
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/internal/BaseGmsClient;->S(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    return-void
.end method

.method public final S0(Lcom/google/android/gms/games/snapshot/Snapshot;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/Snapshot;->M3()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->isClosed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Snapshot already closed"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->o(ZLjava/lang/Object;)V

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->y1()Lcom/google/android/gms/drive/Contents;

    move-result-object v0

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->close()V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/internal/zzac;

    invoke-interface {p1, v0}, Lcom/google/android/gms/games/internal/zzac;->b7(Lcom/google/android/gms/drive/Contents;)V

    return-void
.end method

.method public final S1(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/video/VideoCapabilities;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    new-instance v1, Lcom/google/android/gms/games/internal/zzf$m;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzf$m;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/games/internal/zzac;->k9(Lcom/google/android/gms/games/internal/zzy;)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception v0

    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/games/internal/zzf;->X0(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public T()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final U0(Lcom/google/android/gms/tasks/TaskCompletionSource;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Boolean;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    new-instance v1, Lcom/google/android/gms/games/internal/zzf$j;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzf$j;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/zzac;->Q7(Lcom/google/android/gms/games/internal/zzy;I)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->X0(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final U1(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    new-instance v1, Lcom/google/android/gms/games/internal/zzf$g0;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzf$g0;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/zzac;->r6(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p2

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->X0(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final V0(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;",
            ">;>;",
            "Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;",
            "II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    new-instance v1, Lcom/google/android/gms/games/internal/zzf$t0;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/games/internal/zzf$t0;-><init>(Lcom/google/android/gms/games/internal/zzf;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->i()Lcom/google/android/gms/games/leaderboard/zza;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/games/leaderboard/zza;->a()Landroid/os/Bundle;

    move-result-object p2

    .line 3
    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/zzac;->v1(Lcom/google/android/gms/games/internal/zzy;Landroid/os/Bundle;II)V
    :try_end_16
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_16} :catch_17

    return-void

    :catch_17
    move-exception p2

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->X0(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final V1(Lcom/google/android/gms/tasks/TaskCompletionSource;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/achievement/AchievementBuffer;",
            ">;>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    new-instance v1, Lcom/google/android/gms/games/internal/zzf$a0;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzf$a0;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/zzac;->y8(Lcom/google/android/gms/games/internal/zzy;Z)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->X0(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final W0(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadata;",
            ">;",
            "Lcom/google/android/gms/games/snapshot/Snapshot;",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/google/android/gms/games/snapshot/Snapshot;->M3()Lcom/google/android/gms/games/snapshot/SnapshotContents;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->isClosed()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "Snapshot already closed"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->o(ZLjava/lang/Object;)V

    .line 3
    invoke-interface {p3}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->V1()Lcom/google/android/gms/common/data/BitmapTeleporter;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->D()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/data/BitmapTeleporter;->V3(Ljava/io/File;)V

    .line 5
    :cond_20
    invoke-interface {v0}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->y1()Lcom/google/android/gms/drive/Contents;

    move-result-object v1

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->close()V

    .line 7
    :try_start_27
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    new-instance v2, Lcom/google/android/gms/games/internal/zzf$e0;

    invoke-direct {v2, p1}, Lcom/google/android/gms/games/internal/zzf$e0;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 8
    invoke-interface {p2}, Lcom/google/android/gms/games/snapshot/Snapshot;->i1()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object p2

    invoke-interface {p2}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->R3()Ljava/lang/String;

    move-result-object p2

    check-cast p3, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;

    .line 9
    invoke-interface {v0, v2, p2, p3, v1}, Lcom/google/android/gms/games/internal/zzac;->M1(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;Lcom/google/android/gms/drive/Contents;)V
    :try_end_3f
    .catch Ljava/lang/SecurityException; {:try_start_27 .. :try_end_3f} :catch_40

    return-void

    :catch_40
    move-exception p2

    .line 10
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->X0(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final W1(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/games/video/Videos$CaptureStateResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    .line 2
    new-instance v1, Lcom/google/android/gms/games/internal/g;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/g;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 3
    invoke-interface {v0, v1}, Lcom/google/android/gms/games/internal/zzac;->Ma(Lcom/google/android/gms/games/internal/zzy;)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception v0

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/games/internal/zzf;->E0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final X1(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/games/event/Events$LoadEventsResult;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf;->W:Lcom/google/android/gms/internal/games/zzfe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/games/zzfe;->a()V

    .line 2
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    new-instance v1, Lcom/google/android/gms/games/internal/zzf$i0;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzf$i0;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/zzac;->J3(Lcom/google/android/gms/games/internal/zzy;Z)V
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->E0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final Y0(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    .line 1
    :cond_4
    new-instance v0, Lcom/google/android/gms/games/internal/zzf$b0;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/zzf$b0;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    :goto_9
    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/internal/zzac;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/zzf;->a0:Lcom/google/android/gms/games/internal/zzae;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/zzae;->e()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/games/internal/zzf;->a0:Lcom/google/android/gms/games/internal/zzae;

    invoke-virtual {v3}, Lcom/google/android/gms/games/internal/zzae;->d()Landroid/os/Bundle;

    move-result-object v3

    .line 4
    invoke-interface {v1, v0, p2, v2, v3}, Lcom/google/android/gms/games/internal/zzac;->oa(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_1e
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception p2

    .line 5
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->X0(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final Y1(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/video/CaptureState;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    new-instance v1, Lcom/google/android/gms/games/internal/zzf$h;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzf$h;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/internal/zzac;->Ma(Lcom/google/android/gms/games/internal/zzy;)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception v0

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/games/internal/zzf;->X0(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final Z0(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    .line 1
    :cond_4
    new-instance v0, Lcom/google/android/gms/games/internal/zzf$a;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/zzf$a;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    :goto_9
    move-object v2, v0

    .line 2
    :try_start_a
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/games/internal/zzac;

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf;->a0:Lcom/google/android/gms/games/internal/zzae;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzae;->e()Landroid/os/IBinder;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf;->a0:Lcom/google/android/gms/games/internal/zzae;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/zzae;->d()Landroid/os/Bundle;

    move-result-object v6

    move-object v3, p2

    move v4, p3

    .line 5
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/games/internal/zzac;->B2(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_22
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception p2

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->X0(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final Z1(Lcom/google/android/gms/tasks/TaskCompletionSource;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/event/EventBuffer;",
            ">;>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf;->W:Lcom/google/android/gms/internal/games/zzfe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/games/zzfe;->a()V

    .line 2
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    new-instance v1, Lcom/google/android/gms/games/internal/zzf$l0;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzf$l0;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/zzac;->J3(Lcom/google/android/gms/games/internal/zzy;Z)V
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->X0(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final a1(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;II)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/leaderboard/LeaderboardScore;",
            ">;>;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/games/internal/zzac;

    new-instance v2, Lcom/google/android/gms/games/internal/zzf$r0;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/games/internal/zzf$r0;-><init>(Lcom/google/android/gms/games/internal/zzf;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    const/4 v3, 0x0

    move-object v4, p2

    move v5, p3

    move v6, p4

    .line 2
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/games/internal/zzac;->Ga(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->X0(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final a2(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/games/stats/Stats$LoadPlayerStatsResult;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    .line 2
    new-instance v1, Lcom/google/android/gms/games/internal/c;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/c;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 3
    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/zzac;->o2(Lcom/google/android/gms/games/internal/zzy;Z)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p2

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->E0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final b1(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;IIIZ)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;",
            ">;>;",
            "Ljava/lang/String;",
            "IIIZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/games/internal/zzac;

    new-instance v2, Lcom/google/android/gms/games/internal/zzf$t0;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/games/internal/zzf$t0;-><init>(Lcom/google/android/gms/games/internal/zzf;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 2
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/games/internal/zzac;->B5(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;IIIZ)V
    :try_end_14
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_14} :catch_15

    return-void

    :catch_15
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->X0(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final b2(Lcom/google/android/gms/tasks/TaskCompletionSource;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/stats/PlayerStats;",
            ">;>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    new-instance v1, Lcom/google/android/gms/games/internal/zzf$o;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzf$o;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/zzac;->o2(Lcom/google/android/gms/games/internal/zzy;Z)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p2

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->X0(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public c()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/GmsClient;->H()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final c1(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;IZZ)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/PlayerBuffer;",
            ">;>;",
            "Ljava/lang/String;",
            "IZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "played_with"

    .line 1
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, "friends_all"

    .line 2
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Invalid player collection: "

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p4

    if-eqz p4, :cond_1f

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_24

    :cond_1f
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_24
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_28
    :try_start_28
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/games/internal/zzac;

    new-instance v2, Lcom/google/android/gms/games/internal/zzf$q;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/games/internal/zzf$q;-><init>(Lcom/google/android/gms/games/internal/zzf;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 5
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/games/internal/zzac;->Q6(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;IZZ)V
    :try_end_3b
    .catch Ljava/lang/SecurityException; {:try_start_28 .. :try_end_3b} :catch_3c

    return-void

    :catch_3c
    move-exception p2

    .line 6
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->X0(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final c2(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$LoadSnapshotsResult;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    new-instance v1, Lcom/google/android/gms/games/internal/zzf$v;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzf$v;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/zzac;->G4(Lcom/google/android/gms/games/internal/zzy;Z)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p2

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->E0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final d1(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;JLjava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/games/internal/zzac;

    new-instance v2, Lcom/google/android/gms/games/internal/zzf$u;

    invoke-direct {v2, p1}, Lcom/google/android/gms/games/internal/zzf$u;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    move-object v3, p2

    move-wide v4, p3

    move-object v6, p5

    .line 2
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/games/internal/zzac;->O3(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->X0(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final d2(Lcom/google/android/gms/tasks/TaskCompletionSource;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;",
            ">;>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    new-instance v1, Lcom/google/android/gms/games/internal/zzf$k;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzf$k;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/games/internal/zzac;->G4(Lcom/google/android/gms/games/internal/zzy;Z)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p2

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->X0(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final e1(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;Lcom/google/android/gms/games/snapshot/SnapshotContents;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict<",
            "Lcom/google/android/gms/games/snapshot/Snapshot;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;",
            "Lcom/google/android/gms/games/snapshot/SnapshotContents;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-interface {p5}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->isClosed()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "SnapshotContents already closed"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->o(ZLjava/lang/Object;)V

    .line 2
    invoke-interface {p4}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->V1()Lcom/google/android/gms/common/data/BitmapTeleporter;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->D()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/data/BitmapTeleporter;->V3(Ljava/io/File;)V

    .line 4
    :cond_1c
    invoke-interface {p5}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->y1()Lcom/google/android/gms/drive/Contents;

    move-result-object v7

    .line 5
    invoke-interface {p5}, Lcom/google/android/gms/games/snapshot/SnapshotContents;->close()V

    .line 6
    :try_start_23
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object p5

    move-object v2, p5

    check-cast v2, Lcom/google/android/gms/games/internal/zzac;

    new-instance v3, Lcom/google/android/gms/games/internal/zzf$w;

    invoke-direct {v3, p1}, Lcom/google/android/gms/games/internal/zzf$w;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    move-object v6, p4

    check-cast v6, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;

    move-object v4, p2

    move-object v5, p3

    .line 7
    invoke-interface/range {v2 .. v7}, Lcom/google/android/gms/games/internal/zzac;->Ja(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;Lcom/google/android/gms/drive/Contents;)V
    :try_end_37
    .catch Ljava/lang/SecurityException; {:try_start_23 .. :try_end_37} :catch_38

    return-void

    :catch_38
    move-exception p2

    .line 8
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->X0(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final e2(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf;->a0:Lcom/google/android/gms/games/internal/zzae;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/internal/zzae;->a(I)V

    return-void
.end method

.method public final f1(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/Player;",
            ">;>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    new-instance v1, Lcom/google/android/gms/games/internal/zzf$p;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzf$p;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/zzac;->N4(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;Z)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->X0(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final g1(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;ZI)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict<",
            "Lcom/google/android/gms/games/snapshot/Snapshot;",
            ">;>;",
            "Ljava/lang/String;",
            "ZI)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    new-instance v1, Lcom/google/android/gms/games/internal/zzf$w;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzf$w;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/games/internal/zzac;->j3(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;ZI)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->X0(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public h(Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;)V
    .registers 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/gms/games/internal/zzf;->Y:Lcom/google/android/gms/games/PlayerEntity;

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/games/internal/zzf;->Z:Lcom/google/android/gms/games/GameEntity;

    .line 3
    invoke-super {p0, p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->h(Lcom/google/android/gms/common/internal/BaseGmsClient$ConnectionProgressReportCallbacks;)V

    return-void
.end method

.method public final h1(Lcom/google/android/gms/tasks/TaskCompletionSource;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/Player;",
            ">;>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    new-instance v1, Lcom/google/android/gms/games/internal/zzf$p;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzf$p;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    const/4 v2, 0x0

    .line 2
    invoke-interface {v0, v1, v2, p2}, Lcom/google/android/gms/games/internal/zzac;->N4(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;Z)V
    :try_end_f
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->X0(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public i()V
    .registers 4

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/games/internal/zzf;->b0:Z

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3
    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf;->W:Lcom/google/android/gms/internal/games/zzfe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/games/zzfe;->a()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    iget-wide v1, p0, Lcom/google/android/gms/games/internal/zzf;->c0:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/games/internal/zzac;->f1(J)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_19} :catch_1a

    goto :goto_21

    :catch_1a
    const-string v0, "GamesGmsClientImpl"

    const-string v1, "Failed to notify client disconnect."

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/zzz;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_21
    :goto_21
    invoke-super {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->i()V

    return-void
.end method

.method public final varargs i1(Lcom/google/android/gms/tasks/TaskCompletionSource;Z[Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/event/EventBuffer;",
            ">;>;Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf;->W:Lcom/google/android/gms/internal/games/zzfe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/games/zzfe;->a()V

    .line 2
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    new-instance v1, Lcom/google/android/gms/games/internal/zzf$l0;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/zzf$l0;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 3
    invoke-interface {v0, v1, p2, p3}, Lcom/google/android/gms/games/internal/zzac;->H6(Lcom/google/android/gms/games/internal/zzy;Z[Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception p2

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->X0(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public j(Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;)V
    .registers 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/games/internal/q;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/q;-><init>(Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/zzf;->y1(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    .line 3
    :catch_9
    invoke-interface {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient$SignOutCallbacks;->r1()V

    return-void
.end method

.method public final k1()Landroid/os/Bundle;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/zzf;->C()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_8

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf;->f0:Landroid/os/Bundle;

    :cond_8
    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/google/android/gms/games/internal/zzf;->f0:Landroid/os/Bundle;

    return-object v0
.end method

.method public final l1()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/zzac;->y9()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m1()Lcom/google/android/gms/games/Player;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->w()V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf;->Y:Lcom/google/android/gms/games/PlayerEntity;

    if-nez v0, :cond_35

    .line 4
    new-instance v0, Lcom/google/android/gms/games/PlayerBuffer;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/internal/zzac;

    invoke-interface {v1}, Lcom/google/android/gms/games/internal/zzac;->m8()Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/PlayerBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_39

    .line 5
    :try_start_17
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->getCount()I

    move-result v1

    if-lez v1, :cond_2c

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/PlayerBuffer;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/Player;

    invoke-interface {v1}, Lcom/google/android/gms/common/data/Freezable;->p3()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/PlayerEntity;

    iput-object v1, p0, Lcom/google/android/gms/games/internal/zzf;->Y:Lcom/google/android/gms/games/PlayerEntity;
    :try_end_2c
    .catchall {:try_start_17 .. :try_end_2c} :catchall_30

    .line 7
    :cond_2c
    :try_start_2c
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->c()V

    goto :goto_35

    :catchall_30
    move-exception v1

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->c()V

    .line 9
    throw v1

    .line 10
    :cond_35
    :goto_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_39

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf;->Y:Lcom/google/android/gms/games/PlayerEntity;

    return-object v0

    :catchall_39
    move-exception v0

    .line 12
    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v0
.end method

.method public n()I
    .registers 2

    const v0, 0xbdfcb8

    return v0
.end method

.method public final n1()Lcom/google/android/gms/games/Game;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->w()V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf;->Z:Lcom/google/android/gms/games/GameEntity;

    if-nez v0, :cond_35

    .line 4
    new-instance v0, Lcom/google/android/gms/games/GameBuffer;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/internal/zzac;

    invoke-interface {v1}, Lcom/google/android/gms/games/internal/zzac;->V4()Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/GameBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_39

    .line 5
    :try_start_17
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->getCount()I

    move-result v1

    if-lez v1, :cond_2c

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/GameBuffer;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/Game;

    invoke-interface {v1}, Lcom/google/android/gms/common/data/Freezable;->p3()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/GameEntity;

    iput-object v1, p0, Lcom/google/android/gms/games/internal/zzf;->Z:Lcom/google/android/gms/games/GameEntity;
    :try_end_2c
    .catchall {:try_start_17 .. :try_end_2c} :catchall_30

    .line 7
    :cond_2c
    :try_start_2c
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->c()V

    goto :goto_35

    :catchall_30
    move-exception v1

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->c()V

    .line 9
    throw v1

    .line 10
    :cond_35
    :goto_35
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_39

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf;->Z:Lcom/google/android/gms/games/GameEntity;

    return-object v0

    :catchall_39
    move-exception v0

    .line 12
    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v0
.end method

.method public final o1()Landroid/content/Intent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/zzac;->A5()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final p1()Landroid/content/Intent;
    .registers 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/zzac;->k3()Landroid/content/Intent;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_10

    :catch_b
    move-exception v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/games/internal/zzf;->x0(Landroid/os/RemoteException;)V

    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method

.method public final q1()Landroid/content/Intent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/zzac;->X8()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final r0(Ljava/lang/String;JLjava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/games/internal/zzac;

    const/4 v2, 0x0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/games/internal/zzac;->O3(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_e} :catch_e

    :catch_e
    return-void
.end method

.method public final r1()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/zzac;->a7()I

    move-result v0

    return v0
.end method

.method public final s0(Lcom/google/android/gms/games/PlayerEntity;)Landroid/content/Intent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    invoke-interface {v0, p1}, Lcom/google/android/gms/games/internal/zzac;->L2(Lcom/google/android/gms/games/PlayerEntity;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public final s1()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/zzac;->N0()I

    move-result v0

    return v0
.end method

.method public t()Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf;->e0:Lcom/google/android/gms/games/Games$GamesOptions;

    iget v1, v0, Lcom/google/android/gms/games/Games$GamesOptions;->B:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_9

    return v2

    .line 2
    :cond_9
    iget-object v1, v0, Lcom/google/android/gms/games/Games$GamesOptions;->y:Ljava/lang/String;

    if-nez v1, :cond_12

    iget-boolean v0, v0, Lcom/google/android/gms/games/Games$GamesOptions;->v:Z

    if-nez v0, :cond_12

    return v3

    :cond_12
    return v2
.end method

.method public final t0(Ljava/lang/String;II)Landroid/content/Intent;
    .registers 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/games/internal/zzac;->w4(Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_10

    :catch_b
    move-exception p1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/games/internal/zzf;->x0(Landroid/os/RemoteException;)V

    const/4 p1, 0x0

    :goto_10
    return-object p1
.end method

.method public final t1()Landroid/content/Intent;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/zzac;->o0()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final u0(Ljava/lang/String;ZZI)Landroid/content/Intent;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/games/internal/zzac;->j5(Ljava/lang/String;ZZI)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public final u1()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    invoke-interface {v0}, Lcom/google/android/gms/games/internal/zzac;->U()Z

    move-result v0

    return v0
.end method

.method final w0(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2
    :try_start_6
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/games/internal/zzac;->q8(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    return-void

    :catch_10
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/games/internal/zzf;->x0(Landroid/os/RemoteException;)V

    :cond_14
    return-void
.end method

.method public final w1(Z)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/games/internal/zzf;->Y:Lcom/google/android/gms/games/PlayerEntity;

    if-eqz p1, :cond_9

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/games/PlayerEntity;->J3()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/internal/zzac;

    invoke-interface {p1}, Lcom/google/android/gms/games/internal/zzac;->d1()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic x(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 4

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    .line 1
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/games/internal/zzac;

    if-eqz v1, :cond_11

    .line 3
    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    return-object v0

    .line 4
    :cond_11
    new-instance v0, Lcom/google/android/gms/games/internal/zzaf;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/zzaf;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final y0(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf;->a0:Lcom/google/android/gms/games/internal/zzae;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/internal/zzae;->c(Landroid/view/View;)V

    return-void
.end method

.method public final y1(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf;->W:Lcom/google/android/gms/internal/games/zzfe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/games/zzfe;->a()V

    .line 2
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    .line 3
    new-instance v1, Lcom/google/android/gms/games/internal/p;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/p;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 4
    invoke-interface {v0, v1}, Lcom/google/android/gms/games/internal/zzac;->y7(Lcom/google/android/gms/games/internal/zzy;)V
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_13} :catch_14

    return-void

    :catch_14
    move-exception v0

    .line 5
    invoke-static {p1, v0}, Lcom/google/android/gms/games/internal/zzf;->E0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final z0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    .line 2
    new-instance v1, Lcom/google/android/gms/games/internal/n;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/internal/n;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 3
    invoke-interface {v0, v1}, Lcom/google/android/gms/games/internal/zzac;->r8(Lcom/google/android/gms/games/internal/zzy;)V
    :try_end_e
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception v0

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/games/internal/zzf;->E0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

.method public final z1(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    .line 1
    :cond_4
    new-instance v0, Lcom/google/android/gms/games/internal/zzf$z;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/zzf$z;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    .line 2
    :goto_9
    :try_start_9
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/internal/zzac;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/zzf;->a0:Lcom/google/android/gms/games/internal/zzae;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/games/internal/zzae;->e()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/games/internal/zzf;->a0:Lcom/google/android/gms/games/internal/zzae;

    invoke-virtual {v3}, Lcom/google/android/gms/games/internal/zzae;->d()Landroid/os/Bundle;

    move-result-object v3

    .line 4
    invoke-interface {v1, v0, p2, v2, v3}, Lcom/google/android/gms/games/internal/zzac;->ea(Lcom/google/android/gms/games/internal/zzy;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_1e
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception p2

    .line 5
    invoke-static {p1, p2}, Lcom/google/android/gms/games/internal/zzf;->E0(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;Ljava/lang/SecurityException;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.zzf.a (com.google.android.gms.games.internal.zzf$a)
.class final Lcom/google/android/gms/games/internal/zzf$a;
.super Lcom/google/android/gms/games/internal/zza;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final o:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zza;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$a;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final O5(ILjava/lang/String;)V
    .registers 4

    const/16 p2, 0xbbb

    if-eqz p1, :cond_c

    if-eq p1, p2, :cond_c

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/games/internal/zzf$a;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p2, p1}, Lcom/google/android/gms/games/internal/zzf;->T1(Lcom/google/android/gms/tasks/TaskCompletionSource;I)V

    return-void

    .line 2
    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf$a;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    if-ne p1, p2, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->c(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.zzf.a0 (com.google.android.gms.games.internal.zzf$a0)
.class final Lcom/google/android/gms/games/internal/zzf$a0;
.super Lcom/google/android/gms/games/internal/zza;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a0"
.end annotation


# instance fields
.field private final o:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/achievement/AchievementBuffer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/achievement/AchievementBuffer;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zza;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$a0;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final T2(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->a4()I

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_12

    if-eq v0, v1, :cond_12

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzf$a0;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v1, v0}, Lcom/google/android/gms/games/internal/zzf;->T1(Lcom/google/android/gms/tasks/TaskCompletionSource;I)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    .line 4
    :cond_12
    new-instance v2, Lcom/google/android/gms/games/achievement/AchievementBuffer;

    invoke-direct {v2, p1}, Lcom/google/android/gms/games/achievement/AchievementBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    if-ne v0, v1, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    .line 5
    :goto_1c
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf$a0;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v1, Lcom/google/android/gms/games/AnnotatedData;

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/games/AnnotatedData;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->c(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.zzf.b (com.google.android.gms.games.internal.zzf$b)
.class final Lcom/google/android/gms/games/internal/zzf$b;
.super Lcom/google/android/gms/games/internal/zzf$m0;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final q:Lcom/google/android/gms/games/GameBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/zzf$m0;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/games/GameBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/GameBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/zzf$b;->q:Lcom/google/android/gms/games/GameBuffer;

    return-void
.end method

###### Class com.google.android.gms.games.internal.zzf.b0 (com.google.android.gms.games.internal.zzf$b0)
.class final Lcom/google/android/gms/games/internal/zzf$b0;
.super Lcom/google/android/gms/games/internal/zza;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b0"
.end annotation


# instance fields
.field private final o:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zza;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$b0;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final O5(ILjava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_c

    const/16 p2, 0xbbb

    if-eq p1, p2, :cond_c

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/games/internal/zzf$b0;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p2, p1}, Lcom/google/android/gms/games/internal/zzf;->T1(Lcom/google/android/gms/tasks/TaskCompletionSource;I)V

    return-void

    .line 2
    :cond_c
    iget-object p1, p0, Lcom/google/android/gms/games/internal/zzf$b0;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->c(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.zzf.c (com.google.android.gms.games.internal.zzf$c)
.class final Lcom/google/android/gms/games/internal/zzf$c;
.super Lcom/google/android/gms/games/internal/zzf$m0;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/games/event/Events$LoadEventsResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final q:Lcom/google/android/gms/games/event/EventBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/zzf$m0;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/games/event/EventBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/event/EventBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/zzf$c;->q:Lcom/google/android/gms/games/event/EventBuffer;

    return-void
.end method

###### Class com.google.android.gms.games.internal.zzf.c0 (com.google.android.gms.games.internal.zzf$c0)
.class final Lcom/google/android/gms/games/internal/zzf$c0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/games/video/Videos$CaptureCapabilitiesResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c0"
.end annotation


# instance fields
.field private final o:Lcom/google/android/gms/common/api/Status;

.field private final p:Lcom/google/android/gms/games/video/VideoCapabilities;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/games/video/VideoCapabilities;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$c0;->o:Lcom/google/android/gms/common/api/Status;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/games/internal/zzf$c0;->p:Lcom/google/android/gms/games/video/VideoCapabilities;

    return-void
.end method


# virtual methods
.method public final V2()Lcom/google/android/gms/common/api/Status;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf$c0;->o:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.zzf.d (com.google.android.gms.games.internal.zzf$d)
.class final Lcom/google/android/gms/games/internal/zzf$d;
.super Lcom/google/android/gms/games/internal/zzf$m0;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/games/stats/Stats$LoadPlayerStatsResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private final q:Lcom/google/android/gms/games/stats/PlayerStats;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/zzf$m0;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/games/stats/PlayerStatsBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/stats/PlayerStatsBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 3
    :try_start_8
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->getCount()I

    move-result p1

    if-lez p1, :cond_1d

    .line 4
    new-instance p1, Lcom/google/android/gms/games/stats/PlayerStatsEntity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/stats/PlayerStatsBuffer;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/stats/PlayerStats;

    invoke-direct {p1, v1}, Lcom/google/android/gms/games/stats/PlayerStatsEntity;-><init>(Lcom/google/android/gms/games/stats/PlayerStats;)V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$d;->q:Lcom/google/android/gms/games/stats/PlayerStats;

    goto :goto_20

    :cond_1d
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$d;->q:Lcom/google/android/gms/games/stats/PlayerStats;
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_24

    .line 6
    :goto_20
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->c()V

    return-void

    :catchall_24
    move-exception p1

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->c()V

    .line 8
    throw p1
.end method

###### Class com.google.android.gms.games.internal.zzf.d0 (com.google.android.gms.games.internal.zzf$d0)
.class final Lcom/google/android/gms/games/internal/zzf$d0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/games/video/Videos$CaptureAvailableResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d0"
.end annotation


# instance fields
.field private final o:Lcom/google/android/gms/common/api/Status;

.field private final p:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Z)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$d0;->o:Lcom/google/android/gms/common/api/Status;

    .line 3
    iput-boolean p2, p0, Lcom/google/android/gms/games/internal/zzf$d0;->p:Z

    return-void
.end method


# virtual methods
.method public final V2()Lcom/google/android/gms/common/api/Status;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf$d0;->o:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.zzf.e (com.google.android.gms.games.internal.zzf$e)
.class final Lcom/google/android/gms/games/internal/zzf$e;
.super Lcom/google/android/gms/games/internal/zzf$m0;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadPlayerScoreResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field private final q:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/zzf$m0;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 3
    :try_start_8
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->getCount()I

    move-result p1

    if-lez p1, :cond_1e

    const/4 p1, 0x0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

    invoke-interface {p1}, Lcom/google/android/gms/common/data/Freezable;->p3()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$e;->q:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;

    goto :goto_21

    :cond_1e
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$e;->q:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreEntity;
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_25

    .line 6
    :goto_21
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->c()V

    return-void

    :catchall_25
    move-exception p1

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->c()V

    .line 8
    throw p1
.end method

###### Class com.google.android.gms.games.internal.zzf.e0 (com.google.android.gms.games.internal.zzf$e0)
.class final Lcom/google/android/gms/games/internal/zzf$e0;
.super Lcom/google/android/gms/games/internal/zza;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e0"
.end annotation


# instance fields
.field private final o:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadata;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zza;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$e0;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final S3(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->a4()I

    move-result v0

    if-eqz v0, :cond_f

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzf$e0;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v1, v0}, Lcom/google/android/gms/games/internal/zzf;->T1(Lcom/google/android/gms/tasks/TaskCompletionSource;I)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    :cond_f
    const/4 v0, 0x0

    .line 4
    new-instance v1, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 5
    :try_start_15
    invoke-virtual {v1}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->getCount()I

    move-result p1

    if-lez p1, :cond_29

    const/4 p1, 0x0

    .line 6
    invoke-virtual {v1, p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    invoke-interface {p1}, Lcom/google/android/gms/common/data/Freezable;->p3()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_32

    .line 7
    :cond_29
    invoke-virtual {v1}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->close()V

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/games/internal/zzf$e0;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->c(Ljava/lang/Object;)V

    return-void

    :catchall_32
    move-exception p1

    .line 9
    :try_start_33
    invoke-virtual {v1}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_3b

    :catchall_37
    move-exception v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/games/zzgh;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_3b
    throw p1
.end method

###### Class com.google.android.gms.games.internal.zzf.f (com.google.android.gms.games.internal.zzf$f)
.class final Lcom/google/android/gms/games/internal/zzf$f;
.super Lcom/google/android/gms/games/internal/zzf$m0;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation


# instance fields
.field private final q:Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;

.field private final r:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/games/internal/zzf$m0;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 3
    :try_start_8
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/EntityBuffer;->getCount()I

    move-result p1

    if-lez p1, :cond_1e

    const/4 p1, 0x0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/data/EntityBuffer;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/leaderboard/Leaderboard;

    invoke-interface {p1}, Lcom/google/android/gms/common/data/Freezable;->p3()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$f;->q:Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;

    goto :goto_21

    :cond_1e
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$f;->q:Lcom/google/android/gms/games/leaderboard/LeaderboardEntity;
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_2c

    .line 6
    :goto_21
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->c()V

    .line 7
    new-instance p1, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    invoke-direct {p1, p2}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$f;->r:Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    return-void

    :catchall_2c
    move-exception p1

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->c()V

    .line 9
    throw p1
.end method

###### Class com.google.android.gms.games.internal.zzf.f0 (com.google.android.gms.games.internal.zzf$f0)
.class final Lcom/google/android/gms/games/internal/zzf$f0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/games/video/Videos$CaptureStateResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f0"
.end annotation


# instance fields
.field private final o:Lcom/google/android/gms/common/api/Status;

.field private final p:Lcom/google/android/gms/games/video/CaptureState;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/games/video/CaptureState;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$f0;->o:Lcom/google/android/gms/common/api/Status;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/games/internal/zzf$f0;->p:Lcom/google/android/gms/games/video/CaptureState;

    return-void
.end method


# virtual methods
.method public final V2()Lcom/google/android/gms/common/api/Status;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf$f0;->o:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.zzf.g (com.google.android.gms.games.internal.zzf$g)
.class final Lcom/google/android/gms/games/internal/zzf$g;
.super Lcom/google/android/gms/games/internal/zzf$m0;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/games/Players$LoadPlayersResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation


# instance fields
.field private final q:Lcom/google/android/gms/games/PlayerBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/zzf$m0;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/games/PlayerBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/PlayerBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/zzf$g;->q:Lcom/google/android/gms/games/PlayerBuffer;

    return-void
.end method

###### Class com.google.android.gms.games.internal.zzf.g0 (com.google.android.gms.games.internal.zzf$g0)
.class final Lcom/google/android/gms/games/internal/zzf$g0;
.super Lcom/google/android/gms/games/internal/zza;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g0"
.end annotation


# instance fields
.field private final o:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zza;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$g0;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final c7(ILjava/lang/String;)V
    .registers 3

    if-nez p1, :cond_8

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/games/internal/zzf$g0;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->c(Ljava/lang/Object;)V

    return-void

    .line 2
    :cond_8
    iget-object p2, p0, Lcom/google/android/gms/games/internal/zzf$g0;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p2, p1}, Lcom/google/android/gms/games/internal/zzf;->T1(Lcom/google/android/gms/tasks/TaskCompletionSource;I)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.zzf.h (com.google.android.gms.games.internal.zzf$h)
.class final Lcom/google/android/gms/games/internal/zzf$h;
.super Lcom/google/android/gms/games/internal/zza;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# instance fields
.field private o:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/video/CaptureState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/video/CaptureState;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zza;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$h;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final n2(ILandroid/os/Bundle;)V
    .registers 3

    if-nez p1, :cond_c

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/games/internal/zzf$h;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p2}, Lcom/google/android/gms/games/video/CaptureState;->a(Landroid/os/Bundle;)Lcom/google/android/gms/games/video/CaptureState;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->c(Ljava/lang/Object;)V

    return-void

    .line 2
    :cond_c
    iget-object p2, p0, Lcom/google/android/gms/games/internal/zzf$h;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p2, p1}, Lcom/google/android/gms/games/internal/zzf;->T1(Lcom/google/android/gms/tasks/TaskCompletionSource;I)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.zzf.h0 (com.google.android.gms.games.internal.zzf$h0)
.class final Lcom/google/android/gms/games/internal/zzf$h0;
.super Lcom/google/android/gms/games/internal/zzf$m0;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/games/snapshot/Snapshots$CommitSnapshotResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "h0"
.end annotation


# instance fields
.field private final q:Lcom/google/android/gms/games/snapshot/SnapshotMetadata;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/zzf$m0;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 3
    :try_start_8
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->getCount()I

    move-result p1

    if-lez p1, :cond_1d

    .line 4
    new-instance p1, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    invoke-direct {p1, v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$h0;->q:Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    goto :goto_20

    :cond_1d
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$h0;->q:Lcom/google/android/gms/games/snapshot/SnapshotMetadata;
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_24

    .line 6
    :goto_20
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->c()V

    return-void

    :catchall_24
    move-exception p1

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->c()V

    .line 8
    throw p1
.end method

###### Class com.google.android.gms.games.internal.zzf.i (com.google.android.gms.games.internal.zzf$i)
.class final Lcom/google/android/gms/games/internal/zzf$i;
.super Lcom/google/android/gms/games/internal/zzf$m0;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/games/snapshot/Snapshots$LoadSnapshotsResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "i"
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/zzf$m0;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.zzf.i0 (com.google.android.gms.games.internal.zzf$i0)
.class final Lcom/google/android/gms/games/internal/zzf$i0;
.super Lcom/google/android/gms/games/internal/zzf$r;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "i0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/internal/zzf$r<",
        "Lcom/google/android/gms/games/event/Events$LoadEventsResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/games/event/Events$LoadEventsResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/zzf$r;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    return-void
.end method


# virtual methods
.method public final p1(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/games/internal/zzf$c;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/zzf$c;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/zzf$r;->X0(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.zzf.j (com.google.android.gms.games.internal.zzf$j)
.class final Lcom/google/android/gms/games/internal/zzf$j;
.super Lcom/google/android/gms/games/internal/zza;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "j"
.end annotation


# instance fields
.field private o:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zza;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$j;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final A0(IZ)V
    .registers 3

    if-nez p1, :cond_c

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/games/internal/zzf$j;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->c(Ljava/lang/Object;)V

    return-void

    .line 2
    :cond_c
    iget-object p2, p0, Lcom/google/android/gms/games/internal/zzf$j;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p2, p1}, Lcom/google/android/gms/games/internal/zzf;->T1(Lcom/google/android/gms/tasks/TaskCompletionSource;I)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.zzf.j0 (com.google.android.gms.games.internal.zzf$j0)
.class final Lcom/google/android/gms/games/internal/zzf$j0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/games/snapshot/Snapshots$DeleteSnapshotResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "j0"
.end annotation


# instance fields
.field private final o:Lcom/google/android/gms/common/api/Status;

.field private final p:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/games/GamesStatusCodes;->b(I)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$j0;->o:Lcom/google/android/gms/common/api/Status;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/games/internal/zzf$j0;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final V2()Lcom/google/android/gms/common/api/Status;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf$j0;->o:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.zzf.k (com.google.android.gms.games.internal.zzf$k)
.class final Lcom/google/android/gms/games/internal/zzf$k;
.super Lcom/google/android/gms/games/internal/zza;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "k"
.end annotation


# instance fields
.field private final o:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zza;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$k;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final U4(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->a4()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    if-eqz v0, :cond_17

    if-nez v1, :cond_17

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzf$k;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v1, v0}, Lcom/google/android/gms/games/internal/zzf;->T1(Lcom/google/android/gms/tasks/TaskCompletionSource;I)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    .line 4
    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf$k;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v2, Lcom/google/android/gms/games/AnnotatedData;

    new-instance v3, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;

    invoke-direct {v3, p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/games/AnnotatedData;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->c(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.zzf.k0 (com.google.android.gms.games.internal.zzf$k0)
.class final Lcom/google/android/gms/games/internal/zzf$k0;
.super Lcom/google/android/gms/internal/games/zzfd;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "k0"
.end annotation


# instance fields
.field private final synthetic f:Lcom/google/android/gms/games/internal/zzf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/zzf;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$k0;->f:Lcom/google/android/gms/games/internal/zzf;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->D()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/games/zzfd;-><init>(Landroid/os/Looper;I)V

    return-void
.end method


# virtual methods
.method protected final d(Ljava/lang/String;I)V
    .registers 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf$k0;->f:Lcom/google/android/gms/games/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->a()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf$k0;->f:Lcom/google/android/gms/games/internal/zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/BaseGmsClient;->I()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/zzac;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/games/internal/zzac;->K6(Ljava/lang/String;I)V

    return-void

    :cond_14
    const-string v0, "GamesGmsClientImpl"

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x59

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unable to increment event "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " by "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " because the games client is no longer connected"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/games/internal/zzz;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_41} :catch_47
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_41} :catch_42

    return-void

    :catch_42
    move-exception p1

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/games/internal/zzf;->L1(Ljava/lang/SecurityException;)V

    return-void

    :catch_47
    move-exception p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/games/internal/zzf;->x1(Landroid/os/RemoteException;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.zzf.l (com.google.android.gms.games.internal.zzf$l)
.class final Lcom/google/android/gms/games/internal/zzf$l;
.super Lcom/google/android/gms/games/internal/zzf$m0;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "l"
.end annotation


# instance fields
.field private final q:Lcom/google/android/gms/games/snapshot/Snapshot;

.field private final r:Ljava/lang/String;

.field private final s:Lcom/google/android/gms/games/snapshot/Snapshot;

.field private final t:Lcom/google/android/gms/games/snapshot/SnapshotContents;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/drive/Contents;)V
    .registers 9

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/internal/zzf$l;-><init>(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;)V
    .registers 11

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/zzf$m0;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 3
    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 4
    :try_start_8
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->getCount()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 5
    iput-object v2, p0, Lcom/google/android/gms/games/internal/zzf$l;->q:Lcom/google/android/gms/games/snapshot/Snapshot;

    .line 6
    iput-object v2, p0, Lcom/google/android/gms/games/internal/zzf$l;->s:Lcom/google/android/gms/games/snapshot/Snapshot;

    goto :goto_71

    .line 7
    :cond_14
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->getCount()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_43

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->a4()I

    move-result p1

    const/16 p4, 0xfa4

    if-eq p1, p4, :cond_25

    goto :goto_26

    :cond_25
    const/4 v4, 0x0

    :goto_26
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Asserts;->b(Z)V

    .line 9
    new-instance p1, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    invoke-direct {p1, p4}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V

    .line 10
    new-instance p4, Lcom/google/android/gms/games/snapshot/SnapshotEntity;

    new-instance v1, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;

    invoke-direct {v1, p3}, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;-><init>(Lcom/google/android/gms/drive/Contents;)V

    invoke-direct {p4, p1, v1}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;)V

    iput-object p4, p0, Lcom/google/android/gms/games/internal/zzf$l;->q:Lcom/google/android/gms/games/snapshot/Snapshot;

    .line 11
    iput-object v2, p0, Lcom/google/android/gms/games/internal/zzf$l;->s:Lcom/google/android/gms/games/snapshot/Snapshot;

    goto :goto_71

    .line 12
    :cond_43
    new-instance p1, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    invoke-direct {p1, v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V

    .line 13
    new-instance v1, Lcom/google/android/gms/games/snapshot/SnapshotEntity;

    new-instance v2, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;

    invoke-direct {v2, p3}, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;-><init>(Lcom/google/android/gms/drive/Contents;)V

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;)V

    iput-object v1, p0, Lcom/google/android/gms/games/internal/zzf$l;->q:Lcom/google/android/gms/games/snapshot/Snapshot;

    .line 14
    new-instance p1, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;

    invoke-virtual {v0, v4}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    invoke-direct {p1, p3}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V

    .line 15
    new-instance p3, Lcom/google/android/gms/games/snapshot/SnapshotEntity;

    new-instance v1, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;

    invoke-direct {v1, p4}, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;-><init>(Lcom/google/android/gms/drive/Contents;)V

    invoke-direct {p3, p1, v1}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;)V

    iput-object p3, p0, Lcom/google/android/gms/games/internal/zzf$l;->s:Lcom/google/android/gms/games/snapshot/Snapshot;
    :try_end_71
    .catchall {:try_start_8 .. :try_end_71} :catchall_7e

    .line 16
    :goto_71
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->c()V

    .line 17
    iput-object p2, p0, Lcom/google/android/gms/games/internal/zzf$l;->r:Ljava/lang/String;

    .line 18
    new-instance p1, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;

    invoke-direct {p1, p5}, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;-><init>(Lcom/google/android/gms/drive/Contents;)V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$l;->t:Lcom/google/android/gms/games/snapshot/SnapshotContents;

    return-void

    :catchall_7e
    move-exception p1

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->c()V

    .line 20
    throw p1
.end method

###### Class com.google.android.gms.games.internal.zzf.l0 (com.google.android.gms.games.internal.zzf$l0)
.class final Lcom/google/android/gms/games/internal/zzf$l0;
.super Lcom/google/android/gms/games/internal/zza;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "l0"
.end annotation


# instance fields
.field private final o:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/event/EventBuffer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/event/EventBuffer;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zza;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$l0;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final p1(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->a4()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    if-eqz v0, :cond_17

    if-nez v1, :cond_17

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzf$l0;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v1, v0}, Lcom/google/android/gms/games/internal/zzf;->T1(Lcom/google/android/gms/tasks/TaskCompletionSource;I)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    .line 4
    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf$l0;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v2, Lcom/google/android/gms/games/AnnotatedData;

    new-instance v3, Lcom/google/android/gms/games/event/EventBuffer;

    invoke-direct {v3, p1}, Lcom/google/android/gms/games/event/EventBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/games/AnnotatedData;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->c(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.zzf.m (com.google.android.gms.games.internal.zzf$m)
.class final Lcom/google/android/gms/games/internal/zzf$m;
.super Lcom/google/android/gms/games/internal/zza;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "m"
.end annotation


# instance fields
.field private o:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/video/VideoCapabilities;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/video/VideoCapabilities;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zza;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$m;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final R2(ILcom/google/android/gms/games/video/VideoCapabilities;)V
    .registers 3

    if-nez p1, :cond_8

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/games/internal/zzf$m;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->c(Ljava/lang/Object;)V

    return-void

    .line 2
    :cond_8
    iget-object p2, p0, Lcom/google/android/gms/games/internal/zzf$m;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p2, p1}, Lcom/google/android/gms/games/internal/zzf;->T1(Lcom/google/android/gms/tasks/TaskCompletionSource;I)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.zzf.m0 (com.google.android.gms.games.internal.zzf$m0)
.class Lcom/google/android/gms/games/internal/zzf$m0;
.super Lcom/google/android/gms/common/api/internal/DataHolderResult;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "m0"
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->a4()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/games/GamesStatusCodes;->b(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/DataHolderResult;-><init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.zzf.n (com.google.android.gms.games.internal.zzf$n)
.class final Lcom/google/android/gms/games/internal/zzf$n;
.super Lcom/google/android/gms/games/internal/zzf$r;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/internal/zzf$r<",
        "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/zzf$r;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    return-void
.end method


# virtual methods
.method public final J4(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/games/internal/zzf$g;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/zzf$g;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/zzf$r;->X0(Ljava/lang/Object;)V

    return-void
.end method

.method public final u8(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/games/internal/zzf$g;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/zzf$g;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/zzf$r;->X0(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.zzf.n0 (com.google.android.gms.games.internal.zzf$n0)
.class final Lcom/google/android/gms/games/internal/zzf$n0;
.super Lcom/google/android/gms/games/internal/zza;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "n0"
.end annotation


# instance fields
.field private final o:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/Game;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/Game;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zza;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$n0;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final J5(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->a4()I

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_12

    if-eq v0, v1, :cond_12

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzf$n0;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v1, v0}, Lcom/google/android/gms/games/internal/zzf;->T1(Lcom/google/android/gms/tasks/TaskCompletionSource;I)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    .line 4
    :cond_12
    new-instance v2, Lcom/google/android/gms/games/GameBuffer;

    invoke-direct {v2, p1}, Lcom/google/android/gms/games/GameBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 5
    :try_start_17
    invoke-virtual {v2}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->getCount()I

    move-result p1

    const/4 v3, 0x0

    if-lez p1, :cond_2b

    invoke-virtual {v2, v3}, Lcom/google/android/gms/games/GameBuffer;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/Game;

    invoke-interface {p1}, Lcom/google/android/gms/common/data/Freezable;->p3()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/Game;
    :try_end_2a
    .catchall {:try_start_17 .. :try_end_2a} :catchall_3d

    goto :goto_2c

    :cond_2b
    const/4 p1, 0x0

    .line 6
    :goto_2c
    invoke-virtual {v2}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->close()V

    if-ne v0, v1, :cond_32

    const/4 v3, 0x1

    .line 7
    :cond_32
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf$n0;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v1, Lcom/google/android/gms/games/AnnotatedData;

    invoke-direct {v1, p1, v3}, Lcom/google/android/gms/games/AnnotatedData;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->c(Ljava/lang/Object;)V

    return-void

    :catchall_3d
    move-exception p1

    .line 8
    :try_start_3e
    invoke-virtual {v2}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->close()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    goto :goto_46

    :catchall_42
    move-exception v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/games/zzgh;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_46
    throw p1
.end method

###### Class com.google.android.gms.games.internal.zzf.o (com.google.android.gms.games.internal.zzf$o)
.class final Lcom/google/android/gms/games/internal/zzf$o;
.super Lcom/google/android/gms/games/internal/zza;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "o"
.end annotation


# instance fields
.field private final o:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/stats/PlayerStats;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/stats/PlayerStats;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zza;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$o;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final s4(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->a4()I

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_12

    if-eq v0, v1, :cond_12

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzf$o;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v1, v0}, Lcom/google/android/gms/games/internal/zzf;->T1(Lcom/google/android/gms/tasks/TaskCompletionSource;I)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    :cond_12
    const/4 v2, 0x0

    .line 4
    new-instance v3, Lcom/google/android/gms/games/stats/PlayerStatsBuffer;

    invoke-direct {v3, p1}, Lcom/google/android/gms/games/stats/PlayerStatsBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 5
    :try_start_18
    invoke-virtual {v3}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->getCount()I

    move-result p1

    const/4 v4, 0x0

    if-lez p1, :cond_2c

    .line 6
    invoke-virtual {v3, v4}, Lcom/google/android/gms/games/stats/PlayerStatsBuffer;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/stats/PlayerStats;

    invoke-interface {p1}, Lcom/google/android/gms/common/data/Freezable;->p3()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/games/stats/PlayerStats;
    :try_end_2c
    .catchall {:try_start_18 .. :try_end_2c} :catchall_3d

    .line 7
    :cond_2c
    invoke-virtual {v3}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->close()V

    if-ne v0, v1, :cond_32

    const/4 v4, 0x1

    .line 8
    :cond_32
    iget-object p1, p0, Lcom/google/android/gms/games/internal/zzf$o;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v0, Lcom/google/android/gms/games/AnnotatedData;

    invoke-direct {v0, v2, v4}, Lcom/google/android/gms/games/AnnotatedData;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->c(Ljava/lang/Object;)V

    return-void

    :catchall_3d
    move-exception p1

    .line 9
    :try_start_3e
    invoke-virtual {v3}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->close()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_42

    goto :goto_46

    :catchall_42
    move-exception v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/games/zzgh;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_46
    throw p1
.end method

###### Class com.google.android.gms.games.internal.zzf.o0 (com.google.android.gms.games.internal.zzf$o0)
.class final Lcom/google/android/gms/games/internal/zzf$o0;
.super Lcom/google/android/gms/games/internal/zzf$m0;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "o0"
.end annotation


# instance fields
.field private final q:Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/zzf$m0;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/zzf$o0;->q:Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;

    return-void
.end method

###### Class com.google.android.gms.games.internal.zzf.p (com.google.android.gms.games.internal.zzf$p)
.class final Lcom/google/android/gms/games/internal/zzf$p;
.super Lcom/google/android/gms/games/internal/zza;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "p"
.end annotation


# instance fields
.field private final o:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/Player;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/Player;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zza;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$p;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final u8(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->a4()I

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_12

    if-eq v0, v1, :cond_12

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzf$p;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v1, v0}, Lcom/google/android/gms/games/internal/zzf;->T1(Lcom/google/android/gms/tasks/TaskCompletionSource;I)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    .line 4
    :cond_12
    new-instance v2, Lcom/google/android/gms/games/PlayerBuffer;

    invoke-direct {v2, p1}, Lcom/google/android/gms/games/PlayerBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    const/4 p1, 0x0

    .line 5
    :try_start_18
    invoke-virtual {v2}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->getCount()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_2b

    .line 6
    invoke-virtual {v2, v4}, Lcom/google/android/gms/games/PlayerBuffer;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/Player;

    invoke-interface {p1}, Lcom/google/android/gms/common/data/Freezable;->p3()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/Player;
    :try_end_2b
    .catchall {:try_start_18 .. :try_end_2b} :catchall_3c

    .line 7
    :cond_2b
    invoke-virtual {v2}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->c()V

    if-ne v0, v1, :cond_31

    const/4 v4, 0x1

    .line 8
    :cond_31
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf$p;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v1, Lcom/google/android/gms/games/AnnotatedData;

    invoke-direct {v1, p1, v4}, Lcom/google/android/gms/games/AnnotatedData;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->c(Ljava/lang/Object;)V

    return-void

    :catchall_3c
    move-exception p1

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->c()V

    .line 10
    throw p1
.end method

###### Class com.google.android.gms.games.internal.zzf.p0 (com.google.android.gms.games.internal.zzf$p0)
.class final Lcom/google/android/gms/games/internal/zzf$p0;
.super Lcom/google/android/gms/games/internal/zza;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "p0"
.end annotation


# instance fields
.field private final o:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboard;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboard;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zza;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$p0;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final Ca(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 5

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->a4()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_a

    const/4 v2, 0x1

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    :goto_b
    if-eqz v0, :cond_18

    if-nez v2, :cond_18

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzf$p0;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v1, v0}, Lcom/google/android/gms/games/internal/zzf;->T1(Lcom/google/android/gms/tasks/TaskCompletionSource;I)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    .line 4
    :cond_18
    new-instance v0, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 5
    :try_start_1d
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/EntityBuffer;->getCount()I

    move-result p1

    if-lez p1, :cond_30

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/data/EntityBuffer;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/leaderboard/Leaderboard;

    invoke-interface {p1}, Lcom/google/android/gms/common/data/Freezable;->p3()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/leaderboard/Leaderboard;
    :try_end_2f
    .catchall {:try_start_1d .. :try_end_2f} :catchall_3f

    goto :goto_31

    :cond_30
    const/4 p1, 0x0

    .line 6
    :goto_31
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->close()V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf$p0;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v1, Lcom/google/android/gms/games/AnnotatedData;

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/games/AnnotatedData;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->c(Ljava/lang/Object;)V

    return-void

    :catchall_3f
    move-exception p1

    .line 8
    :try_start_40
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->close()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_44

    goto :goto_48

    :catchall_44
    move-exception v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/games/zzgh;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_48
    throw p1
.end method

###### Class com.google.android.gms.games.internal.zzf.q (com.google.android.gms.games.internal.zzf$q)
.class final Lcom/google/android/gms/games/internal/zzf$q;
.super Lcom/google/android/gms/games/internal/zza;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "q"
.end annotation


# instance fields
.field private final o:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/PlayerBuffer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final synthetic p:Lcom/google/android/gms/games/internal/zzf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/zzf;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/PlayerBuffer;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$q;->p:Lcom/google/android/gms/games/internal/zzf;

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zza;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/games/internal/zzf$q;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final J4(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/zza;->u8(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method

.method public final u8(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->a4()I

    move-result v0

    const/16 v1, 0x2713

    if-ne v0, v1, :cond_13

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf$q;->p:Lcom/google/android/gms/games/internal/zzf;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzf$q;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/zzf;->R0(Lcom/google/android/gms/games/internal/zzf;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    :cond_13
    const/4 v1, 0x3

    if-ne v0, v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    if-eqz v0, :cond_26

    if-nez v1, :cond_26

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzf$q;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v1, v0}, Lcom/google/android/gms/games/internal/zzf;->T1(Lcom/google/android/gms/tasks/TaskCompletionSource;I)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    .line 6
    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf$q;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v2, Lcom/google/android/gms/games/AnnotatedData;

    new-instance v3, Lcom/google/android/gms/games/PlayerBuffer;

    invoke-direct {v3, p1}, Lcom/google/android/gms/games/PlayerBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/games/AnnotatedData;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->c(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.zzf.q0 (com.google.android.gms.games.internal.zzf$q0)
.class final Lcom/google/android/gms/games/internal/zzf$q0;
.super Lcom/google/android/gms/games/internal/zzf$r;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "q0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/internal/zzf$r<",
        "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LoadScoresResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/zzf$r;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    return-void
.end method


# virtual methods
.method public final R9(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/games/internal/zzf$f;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/games/internal/zzf$f;-><init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/zzf$r;->X0(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.zzf.r (com.google.android.gms.games.internal.zzf$r)
.class Lcom/google/android/gms/games/internal/zzf$r;
.super Lcom/google/android/gms/games/internal/zza;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "r"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/games/internal/zza;"
    }
.end annotation


# instance fields
.field private final o:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zza;-><init>()V

    const-string v0, "Holder must not be null"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$r;->o:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    return-void
.end method


# virtual methods
.method final X0(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf$r;->o:Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;->b(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.zzf.r0 (com.google.android.gms.games.internal.zzf$r0)
.class final Lcom/google/android/gms/games/internal/zzf$r0;
.super Lcom/google/android/gms/games/internal/zza;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "r0"
.end annotation


# instance fields
.field private final o:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/leaderboard/LeaderboardScore;",
            ">;>;"
        }
    .end annotation
.end field

.field private final synthetic p:Lcom/google/android/gms/games/internal/zzf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/zzf;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/leaderboard/LeaderboardScore;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$r0;->p:Lcom/google/android/gms/games/internal/zzf;

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zza;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/games/internal/zzf$r0;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final Z8(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->a4()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_a

    const/4 v2, 0x1

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    :goto_b
    const/16 v3, 0x2713

    if-ne v0, v3, :cond_1a

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf$r0;->p:Lcom/google/android/gms/games/internal/zzf;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzf$r0;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/zzf;->R0(Lcom/google/android/gms/games/internal/zzf;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    :cond_1a
    if-eqz v0, :cond_27

    if-nez v2, :cond_27

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzf$r0;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v1, v0}, Lcom/google/android/gms/games/internal/zzf;->T1(Lcom/google/android/gms/tasks/TaskCompletionSource;I)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    .line 6
    :cond_27
    new-instance v0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 7
    :try_start_2c
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->getCount()I

    move-result p1

    if-lez p1, :cond_3f

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;

    invoke-interface {p1}, Lcom/google/android/gms/common/data/Freezable;->p3()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/leaderboard/LeaderboardScore;
    :try_end_3e
    .catchall {:try_start_2c .. :try_end_3e} :catchall_4e

    goto :goto_40

    :cond_3f
    const/4 p1, 0x0

    .line 8
    :goto_40
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->close()V

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf$r0;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v1, Lcom/google/android/gms/games/AnnotatedData;

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/games/AnnotatedData;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->c(Ljava/lang/Object;)V

    return-void

    :catchall_4e
    move-exception p1

    .line 10
    :try_start_4f
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->close()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_53

    goto :goto_57

    :catchall_53
    move-exception v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/games/zzgh;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_57
    throw p1
.end method

###### Class com.google.android.gms.games.internal.zzf.s (com.google.android.gms.games.internal.zzf$s)
.class interface abstract Lcom/google/android/gms/games/internal/zzf$s;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "s"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract accept(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

###### Class com.google.android.gms.games.internal.zzf.s0 (com.google.android.gms.games.internal.zzf$s0)
.class final Lcom/google/android/gms/games/internal/zzf$s0;
.super Lcom/google/android/gms/games/internal/zzf$r;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "s0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/internal/zzf$r<",
        "Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/games/leaderboard/Leaderboards$LeaderboardMetadataResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/zzf$r;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    return-void
.end method


# virtual methods
.method public final Ca(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/games/internal/zzf$o0;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/zzf$o0;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/zzf$r;->X0(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.zzf.t (com.google.android.gms.games.internal.zzf$t)
.class final Lcom/google/android/gms/games/internal/zzf$t;
.super Lcom/google/android/gms/games/internal/zzf$r;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "t"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/internal/zzf$r<",
        "Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$OpenSnapshotResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/zzf$r;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    return-void
.end method


# virtual methods
.method public final I3(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/drive/Contents;)V
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/games/internal/zzf$l;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/games/internal/zzf$l;-><init>(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/drive/Contents;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/zzf$r;->X0(Ljava/lang/Object;)V

    return-void
.end method

.method public final U7(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;)V
    .registers 13

    .line 1
    new-instance v6, Lcom/google/android/gms/games/internal/zzf$l;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/internal/zzf$l;-><init>(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;)V

    invoke-virtual {p0, v6}, Lcom/google/android/gms/games/internal/zzf$r;->X0(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.zzf.t0 (com.google.android.gms.games.internal.zzf$t0)
.class final Lcom/google/android/gms/games/internal/zzf$t0;
.super Lcom/google/android/gms/games/internal/zza;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "t0"
.end annotation


# instance fields
.field private final o:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;",
            ">;>;"
        }
    .end annotation
.end field

.field private final synthetic p:Lcom/google/android/gms/games/internal/zzf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/zzf;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$t0;->p:Lcom/google/android/gms/games/internal/zzf;

    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zza;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/games/internal/zzf$t0;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final R9(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 8

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/common/data/DataHolder;->a4()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_a

    const/4 v2, 0x1

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    :goto_b
    const/16 v3, 0x2713

    if-ne v0, v3, :cond_1d

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf$t0;->p:Lcom/google/android/gms/games/internal/zzf;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzf$t0;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/zzf;->R0(Lcom/google/android/gms/games/internal/zzf;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    :cond_1d
    if-eqz v0, :cond_2d

    if-nez v2, :cond_2d

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzf$t0;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v1, v0}, Lcom/google/android/gms/games/internal/zzf;->T1(Lcom/google/android/gms/tasks/TaskCompletionSource;I)V

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    .line 8
    :cond_2d
    new-instance v0, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 9
    :try_start_32
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/EntityBuffer;->getCount()I

    move-result p1

    if-lez p1, :cond_45

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/data/EntityBuffer;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/leaderboard/Leaderboard;

    invoke-interface {p1}, Lcom/google/android/gms/common/data/Freezable;->p3()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/games/leaderboard/Leaderboard;
    :try_end_44
    .catchall {:try_start_32 .. :try_end_44} :catchall_5e

    goto :goto_46

    :cond_45
    const/4 p1, 0x0

    .line 10
    :goto_46
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->close()V

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf$t0;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v1, Lcom/google/android/gms/games/AnnotatedData;

    new-instance v3, Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;

    new-instance v4, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;

    invoke-direct {v4, p2}, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-direct {v3, p1, v4}, Lcom/google/android/gms/games/LeaderboardsClient$LeaderboardScores;-><init>(Lcom/google/android/gms/games/leaderboard/Leaderboard;Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBuffer;)V

    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/games/AnnotatedData;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->c(Ljava/lang/Object;)V

    return-void

    :catchall_5e
    move-exception p1

    .line 12
    :try_start_5f
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->close()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_63

    goto :goto_67

    :catchall_63
    move-exception p2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/games/zzgh;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_67
    throw p1
.end method

###### Class com.google.android.gms.games.internal.zzf.u (com.google.android.gms.games.internal.zzf$u)
.class final Lcom/google/android/gms/games/internal/zzf$u;
.super Lcom/google/android/gms/games/internal/zza;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "u"
.end annotation


# instance fields
.field private final o:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zza;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$u;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final n7(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->a4()I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v1, 0x5

    if-eq v0, v1, :cond_12

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzf$u;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v1, v0}, Lcom/google/android/gms/games/internal/zzf;->T1(Lcom/google/android/gms/tasks/TaskCompletionSource;I)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    .line 4
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf$u;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v1, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->c(Ljava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_20

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    :catchall_20
    move-exception v0

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    .line 7
    throw v0
.end method

###### Class com.google.android.gms.games.internal.zzf.u0 (com.google.android.gms.games.internal.zzf$u0)
.class Lcom/google/android/gms/games/internal/zzf$u0;
.super Lcom/google/android/gms/games/internal/zza;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "u0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/games/internal/zza;"
    }
.end annotation


# instance fields
.field private final o:Lcom/google/android/gms/common/api/internal/ListenerHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/ListenerHolder<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/ListenerHolder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/ListenerHolder<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zza;-><init>()V

    const-string v0, "Callback must not be null"

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->l(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/ListenerHolder;

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$u0;->o:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    return-void
.end method


# virtual methods
.method final X0(Lcom/google/android/gms/games/internal/zzf$s;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/games/internal/zzf$s<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf$u0;->o:Lcom/google/android/gms/common/api/internal/ListenerHolder;

    invoke-static {p1}, Lcom/google/android/gms/games/internal/zzf;->v1(Lcom/google/android/gms/games/internal/zzf$s;)Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/ListenerHolder;->c(Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.zzf.v (com.google.android.gms.games.internal.zzf$v)
.class final Lcom/google/android/gms/games/internal/zzf$v;
.super Lcom/google/android/gms/games/internal/zzf$r;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "v"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/internal/zzf$r<",
        "Lcom/google/android/gms/games/snapshot/Snapshots$LoadSnapshotsResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/games/snapshot/Snapshots$LoadSnapshotsResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/zzf$r;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    return-void
.end method


# virtual methods
.method public final U4(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/games/internal/zzf$i;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/internal/zzf$i;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/zzf$r;->X0(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.zzf.v0 (com.google.android.gms.games.internal.zzf$v0)
.class final Lcom/google/android/gms/games/internal/zzf$v0;
.super Lcom/google/android/gms/games/internal/zza;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "v0"
.end annotation


# instance fields
.field private final o:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/AnnotatedData<",
            "Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zza;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$v0;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final Ca(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 6

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->a4()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    if-eqz v0, :cond_17

    if-nez v1, :cond_17

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/games/internal/zzf$v0;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v1, v0}, Lcom/google/android/gms/games/internal/zzf;->T1(Lcom/google/android/gms/tasks/TaskCompletionSource;I)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    .line 4
    :cond_17
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf$v0;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v2, Lcom/google/android/gms/games/AnnotatedData;

    new-instance v3, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;

    invoke-direct {v3, p1}, Lcom/google/android/gms/games/leaderboard/LeaderboardBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-direct {v2, v3, v1}, Lcom/google/android/gms/games/AnnotatedData;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->c(Ljava/lang/Object;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.zzf.w (com.google.android.gms.games.internal.zzf$w)
.class final Lcom/google/android/gms/games/internal/zzf$w;
.super Lcom/google/android/gms/games/internal/zza;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "w"
.end annotation


# instance fields
.field private final o:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict<",
            "Lcom/google/android/gms/games/snapshot/Snapshot;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict<",
            "Lcom/google/android/gms/games/snapshot/Snapshot;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zza;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$w;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final I3(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/drive/Contents;)V
    .registers 8

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->a4()I

    move-result v0

    .line 2
    new-instance v1, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;

    invoke-direct {v1, p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 3
    :try_start_9
    invoke-virtual {v1}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->getCount()I

    move-result p1

    const/4 v2, 0x0

    if-lez p1, :cond_28

    .line 4
    new-instance p1, Lcom/google/android/gms/games/snapshot/SnapshotEntity;

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v1, v3}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    invoke-interface {v3}, Lcom/google/android/gms/common/data/Freezable;->p3()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    new-instance v4, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;

    invoke-direct {v4, p2}, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;-><init>(Lcom/google/android/gms/drive/Contents;)V

    invoke-direct {p1, v3, v4}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;)V
    :try_end_27
    .catchall {:try_start_9 .. :try_end_27} :catchall_5e

    goto :goto_29

    :cond_28
    move-object p1, v2

    .line 6
    :goto_29
    invoke-virtual {v1}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->close()V

    if-nez v0, :cond_39

    .line 7
    iget-object p2, p0, Lcom/google/android/gms/games/internal/zzf$w;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v0, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;

    invoke-direct {v0, p1, v2}, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;-><init>(Ljava/lang/Object;Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;)V

    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->c(Ljava/lang/Object;)V

    return-void

    :cond_39
    const/16 p2, 0xfa2

    if-ne v0, p2, :cond_58

    if-eqz p1, :cond_58

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->i1()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object p2

    if-eqz p2, :cond_58

    .line 9
    iget-object p2, p0, Lcom/google/android/gms/games/internal/zzf$w;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v1, Lcom/google/android/gms/games/SnapshotsClient$SnapshotContentUnavailableApiException;

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/games/GamesStatusCodes;->b(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;->i1()Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/games/SnapshotsClient$SnapshotContentUnavailableApiException;-><init>(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)V

    .line 11
    invoke-virtual {p2, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Exception;)V

    return-void

    .line 12
    :cond_58
    iget-object p1, p0, Lcom/google/android/gms/games/internal/zzf$w;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p1, v0}, Lcom/google/android/gms/games/internal/zzf;->T1(Lcom/google/android/gms/tasks/TaskCompletionSource;I)V

    return-void

    :catchall_5e
    move-exception p1

    .line 13
    :try_start_5f
    invoke-virtual {v1}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->close()V
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_63

    goto :goto_67

    :catchall_63
    move-exception p2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/games/zzgh;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_67
    throw p1
.end method

.method public final U7(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;)V
    .registers 10

    .line 1
    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 2
    :try_start_5
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->getCount()I

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-lt p1, v1, :cond_58

    if-eqz p2, :cond_58

    if-nez p5, :cond_12

    goto :goto_58

    .line 3
    :cond_12
    new-instance p1, Lcom/google/android/gms/games/snapshot/SnapshotEntity;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    invoke-interface {v1}, Lcom/google/android/gms/common/data/Freezable;->p3()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    new-instance v3, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;

    invoke-direct {v3, p3}, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;-><init>(Lcom/google/android/gms/drive/Contents;)V

    invoke-direct {p1, v1, v3}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;)V

    .line 5
    new-instance p3, Lcom/google/android/gms/games/snapshot/SnapshotEntity;

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataBuffer;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    invoke-interface {v1}, Lcom/google/android/gms/common/data/Freezable;->p3()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;

    new-instance v3, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;

    invoke-direct {v3, p4}, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;-><init>(Lcom/google/android/gms/drive/Contents;)V

    invoke-direct {p3, v1, v3}, Lcom/google/android/gms/games/snapshot/SnapshotEntity;-><init>(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;)V
    :try_end_40
    .catchall {:try_start_5 .. :try_end_40} :catchall_61

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->close()V

    .line 8
    iget-object p4, p0, Lcom/google/android/gms/games/internal/zzf$w;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v0, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;

    new-instance v1, Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;

    new-instance v3, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;

    invoke-direct {v3, p5}, Lcom/google/android/gms/games/snapshot/SnapshotContentsEntity;-><init>(Lcom/google/android/gms/drive/Contents;)V

    invoke-direct {v1, p1, p2, p3, v3}, Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;-><init>(Lcom/google/android/gms/games/snapshot/Snapshot;Ljava/lang/String;Lcom/google/android/gms/games/snapshot/Snapshot;Lcom/google/android/gms/games/snapshot/SnapshotContents;)V

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/games/SnapshotsClient$DataOrConflict;-><init>(Ljava/lang/Object;Lcom/google/android/gms/games/SnapshotsClient$SnapshotConflict;)V

    invoke-virtual {p4, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->c(Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_58
    :goto_58
    :try_start_58
    iget-object p1, p0, Lcom/google/android/gms/games/internal/zzf$w;->o:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p1, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->c(Ljava/lang/Object;)V
    :try_end_5d
    .catchall {:try_start_58 .. :try_end_5d} :catchall_61

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->close()V

    return-void

    :catchall_61
    move-exception p1

    .line 11
    :try_start_62
    invoke-virtual {v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->close()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_66

    goto :goto_6a

    :catchall_66
    move-exception p2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/games/zzgh;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_6a
    throw p1
.end method

###### Class com.google.android.gms.games.internal.zzf.w0 (com.google.android.gms.games.internal.zzf$w0)
.class final Lcom/google/android/gms/games/internal/zzf$w0;
.super Lcom/google/android/gms/games/internal/zzf$m0;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/games/achievement/Achievements$LoadAchievementsResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "w0"
.end annotation


# instance fields
.field private final q:Lcom/google/android/gms/games/achievement/AchievementBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/zzf$m0;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/games/achievement/AchievementBuffer;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/achievement/AchievementBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/zzf$w0;->q:Lcom/google/android/gms/games/achievement/AchievementBuffer;

    return-void
.end method

###### Class com.google.android.gms.games.internal.zzf.x (com.google.android.gms.games.internal.zzf$x)
.class final Lcom/google/android/gms/games/internal/zzf$x;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "x"
.end annotation


# instance fields
.field private final o:Lcom/google/android/gms/common/api/Status;

.field private final p:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/games/GamesStatusCodes;->b(I)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/games/internal/zzf$x;->o:Lcom/google/android/gms/common/api/Status;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/games/internal/zzf$x;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final V2()Lcom/google/android/gms/common/api/Status;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/games/internal/zzf$x;->o:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.zzf.x0 (com.google.android.gms.games.internal.zzf$x0)
.class abstract Lcom/google/android/gms/games/internal/zzf$x0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "x0"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/internal/ListenerHolder$Notifier<",
        "TT;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/internal/a;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/games/internal/zzf$x0;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .registers 1

    return-void
.end method

###### Class com.google.android.gms.games.internal.zzf.y (com.google.android.gms.games.internal.zzf$y)
.class final Lcom/google/android/gms/games/internal/zzf$y;
.super Lcom/google/android/gms/games/internal/zzf$m0;
.source "com.google.android.gms:play-services-games@@21.0.0"

# interfaces
.implements Lcom/google/android/gms/games/leaderboard/Leaderboards$SubmitScoreResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "y"
.end annotation


# instance fields
.field private final q:Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/zzf$m0;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    .line 2
    :try_start_3
    new-instance v0, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/zzf$y;->q:Lcom/google/android/gms/games/leaderboard/ScoreSubmissionData;
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    return-void

    :catchall_e
    move-exception v0

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    .line 5
    throw v0
.end method

###### Class com.google.android.gms.games.internal.zzf.z (com.google.android.gms.games.internal.zzf$z)
.class final Lcom/google/android/gms/games/internal/zzf$z;
.super Lcom/google/android/gms/games/internal/zzf$r;
.source "com.google.android.gms:play-services-games@@21.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/zzf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "z"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/internal/zzf$r<",
        "Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder<",
            "Lcom/google/android/gms/games/achievement/Achievements$UpdateAchievementResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/zzf$r;-><init>(Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V

    return-void
.end method


# virtual methods
.method public final O5(ILjava/lang/String;)V
    .registers 4

    .line 1
    new-instance v0, Lcom/google/android/gms/games/internal/zzf$x;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/games/internal/zzf$x;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/zzf$r;->X0(Ljava/lang/Object;)V

    return-void
.end method
