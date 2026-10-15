###### Class com.google.android.gms.internal.ads.zzdgi (com.google.android.gms.internal.ads.zzdgi)
.class public final Lcom/google/android/gms/internal/ads/zzdgi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private a:I

.field private b:Lcom/google/android/gms/ads/internal/client/zzdq;

.field private c:Lcom/google/android/gms/internal/ads/zzbdp;

.field private d:Landroid/view/View;

.field private e:Ljava/util/List;

.field private f:Ljava/util/List;

.field private g:Lcom/google/android/gms/ads/internal/client/zzel;

.field private h:Landroid/os/Bundle;

.field private i:Lcom/google/android/gms/internal/ads/zzcei;

.field private j:Lcom/google/android/gms/internal/ads/zzcei;

.field private k:Lcom/google/android/gms/internal/ads/zzcei;

.field private l:Lcom/google/android/gms/dynamic/IObjectWrapper;

.field private m:Landroid/view/View;

.field private n:Lcom/google/android/gms/internal/ads/zzfut;

.field private o:Landroid/view/View;

.field private p:Lcom/google/android/gms/dynamic/IObjectWrapper;

.field private q:D

.field private r:Lcom/google/android/gms/internal/ads/zzbdx;

.field private s:Lcom/google/android/gms/internal/ads/zzbdx;

.field private t:Ljava/lang/String;

.field private final u:Lo/g;

.field private final v:Lo/g;

.field private w:F

.field private x:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo/g;

    invoke-direct {v0}, Lo/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->u:Lo/g;

    new-instance v0, Lo/g;

    .line 2
    invoke-direct {v0}, Lo/g;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->v:Lo/g;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->f:Ljava/util/List;

    return-void
.end method

.method public static E(Lcom/google/android/gms/internal/ads/zzbnq;)Lcom/google/android/gms/internal/ads/zzdgi;
    .registers 17

    const/4 v1, 0x0

    .line 1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnq;->A9()Lcom/google/android/gms/ads/internal/client/zzdq;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdgi;->I(Lcom/google/android/gms/ads/internal/client/zzdq;Lcom/google/android/gms/internal/ads/zzbnu;)Lcom/google/android/gms/internal/ads/zzdgh;

    move-result-object v0

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnq;->Ra()Lcom/google/android/gms/internal/ads/zzbdp;

    move-result-object v2

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnq;->Ta()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdgi;->K(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnq;->m()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnq;->Va()Ljava/util/List;

    move-result-object v5

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnq;->l()Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnq;->c()Landroid/os/Bundle;

    move-result-object v7

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnq;->k()Ljava/lang/String;

    move-result-object v8

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnq;->Ua()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzdgi;->K(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnq;->j()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v10

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnq;->r()Ljava/lang/String;

    move-result-object v11

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnq;->n()Ljava/lang/String;

    move-result-object v12

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnq;->b()D

    move-result-wide v13

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnq;->Sa()Lcom/google/android/gms/internal/ads/zzbdx;

    move-result-object v15

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdgi;

    .line 15
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzdgi;-><init>()V

    move-object/from16 p0, v15

    const/4 v15, 0x2

    iput v15, v1, Lcom/google/android/gms/internal/ads/zzdgi;->a:I

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzdgi;->b:Lcom/google/android/gms/ads/internal/client/zzdq;

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzdgi;->c:Lcom/google/android/gms/internal/ads/zzbdp;

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzdgi;->d:Landroid/view/View;

    const-string v0, "headline"

    .line 16
    invoke-virtual {v1, v0, v4}, Lcom/google/android/gms/internal/ads/zzdgi;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, v1, Lcom/google/android/gms/internal/ads/zzdgi;->e:Ljava/util/List;

    const-string v0, "body"

    .line 17
    invoke-virtual {v1, v0, v6}, Lcom/google/android/gms/internal/ads/zzdgi;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzdgi;->h:Landroid/os/Bundle;

    const-string v0, "call_to_action"

    .line 18
    invoke-virtual {v1, v0, v8}, Lcom/google/android/gms/internal/ads/zzdgi;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v9, v1, Lcom/google/android/gms/internal/ads/zzdgi;->m:Landroid/view/View;

    iput-object v10, v1, Lcom/google/android/gms/internal/ads/zzdgi;->p:Lcom/google/android/gms/dynamic/IObjectWrapper;

    const-string v0, "store"

    .line 19
    invoke-virtual {v1, v0, v11}, Lcom/google/android/gms/internal/ads/zzdgi;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "price"

    .line 20
    invoke-virtual {v1, v0, v12}, Lcom/google/android/gms/internal/ads/zzdgi;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide v13, v1, Lcom/google/android/gms/internal/ads/zzdgi;->q:D

    move-object/from16 v0, p0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzdgi;->r:Lcom/google/android/gms/internal/ads/zzbdx;
    :try_end_80
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_80} :catch_81

    return-object v1

    :catch_81
    move-exception v0

    const-string v1, "Failed to get native ad from app install ad mapper"

    .line 21
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method public static F(Lcom/google/android/gms/internal/ads/zzbnr;)Lcom/google/android/gms/internal/ads/zzdgi;
    .registers 15

    const/4 v0, 0x0

    .line 1
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbnr;->A9()Lcom/google/android/gms/ads/internal/client/zzdq;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzdgi;->I(Lcom/google/android/gms/ads/internal/client/zzdq;Lcom/google/android/gms/internal/ads/zzbnu;)Lcom/google/android/gms/internal/ads/zzdgh;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbnr;->Ra()Lcom/google/android/gms/internal/ads/zzbdp;

    move-result-object v2

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbnr;->g()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdgi;->K(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbnr;->m()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbnr;->Va()Ljava/util/List;

    move-result-object v5

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbnr;->l()Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbnr;->b()Landroid/os/Bundle;

    move-result-object v7

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbnr;->k()Ljava/lang/String;

    move-result-object v8

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbnr;->Ta()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzdgi;->K(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbnr;->Ua()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v10

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbnr;->j()Ljava/lang/String;

    move-result-object v11

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbnr;->Sa()Lcom/google/android/gms/internal/ads/zzbdx;

    move-result-object p0

    new-instance v12, Lcom/google/android/gms/internal/ads/zzdgi;

    .line 13
    invoke-direct {v12}, Lcom/google/android/gms/internal/ads/zzdgi;-><init>()V

    const/4 v13, 0x1

    iput v13, v12, Lcom/google/android/gms/internal/ads/zzdgi;->a:I

    iput-object v1, v12, Lcom/google/android/gms/internal/ads/zzdgi;->b:Lcom/google/android/gms/ads/internal/client/zzdq;

    iput-object v2, v12, Lcom/google/android/gms/internal/ads/zzdgi;->c:Lcom/google/android/gms/internal/ads/zzbdp;

    iput-object v3, v12, Lcom/google/android/gms/internal/ads/zzdgi;->d:Landroid/view/View;

    const-string v1, "headline"

    .line 14
    invoke-virtual {v12, v1, v4}, Lcom/google/android/gms/internal/ads/zzdgi;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, v12, Lcom/google/android/gms/internal/ads/zzdgi;->e:Ljava/util/List;

    const-string v1, "body"

    .line 15
    invoke-virtual {v12, v1, v6}, Lcom/google/android/gms/internal/ads/zzdgi;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v7, v12, Lcom/google/android/gms/internal/ads/zzdgi;->h:Landroid/os/Bundle;

    const-string v1, "call_to_action"

    .line 16
    invoke-virtual {v12, v1, v8}, Lcom/google/android/gms/internal/ads/zzdgi;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v9, v12, Lcom/google/android/gms/internal/ads/zzdgi;->m:Landroid/view/View;

    iput-object v10, v12, Lcom/google/android/gms/internal/ads/zzdgi;->p:Lcom/google/android/gms/dynamic/IObjectWrapper;

    const-string v1, "advertiser"

    .line 17
    invoke-virtual {v12, v1, v11}, Lcom/google/android/gms/internal/ads/zzdgi;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p0, v12, Lcom/google/android/gms/internal/ads/zzdgi;->s:Lcom/google/android/gms/internal/ads/zzbdx;
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6d} :catch_6e

    return-object v12

    :catch_6e
    move-exception p0

    const-string v1, "Failed to get native ad from content ad mapper"

    .line 18
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/ads/zzbza;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static G(Lcom/google/android/gms/internal/ads/zzbnq;)Lcom/google/android/gms/internal/ads/zzdgi;
    .registers 20

    const/4 v1, 0x0

    .line 1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnq;->A9()Lcom/google/android/gms/ads/internal/client/zzdq;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdgi;->I(Lcom/google/android/gms/ads/internal/client/zzdq;Lcom/google/android/gms/internal/ads/zzbnu;)Lcom/google/android/gms/internal/ads/zzdgh;

    move-result-object v2

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnq;->Ra()Lcom/google/android/gms/internal/ads/zzbdp;

    move-result-object v3

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnq;->Ta()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->K(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/view/View;

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnq;->m()Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnq;->Va()Ljava/util/List;

    move-result-object v6

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnq;->l()Ljava/lang/String;

    move-result-object v7

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnq;->c()Landroid/os/Bundle;

    move-result-object v8

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnq;->k()Ljava/lang/String;

    move-result-object v9

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnq;->Ua()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->K(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/view/View;

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnq;->j()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v11

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnq;->r()Ljava/lang/String;

    move-result-object v12

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnq;->n()Ljava/lang/String;

    move-result-object v13

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnq;->b()D

    move-result-wide v14

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnq;->Sa()Lcom/google/android/gms/internal/ads/zzbdx;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 15
    invoke-static/range {v2 .. v18}, Lcom/google/android/gms/internal/ads/zzdgi;->J(Lcom/google/android/gms/ads/internal/client/zzdq;Lcom/google/android/gms/internal/ads/zzbdp;Landroid/view/View;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/view/View;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Ljava/lang/String;DLcom/google/android/gms/internal/ads/zzbdx;Ljava/lang/String;F)Lcom/google/android/gms/internal/ads/zzdgi;

    move-result-object v0
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_53} :catch_54

    return-object v0

    :catch_54
    move-exception v0

    const-string v2, "Failed to get native ad assets from app install ad mapper"

    .line 16
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzbza;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static H(Lcom/google/android/gms/internal/ads/zzbnr;)Lcom/google/android/gms/internal/ads/zzdgi;
    .registers 20

    const/4 v1, 0x0

    .line 1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnr;->A9()Lcom/google/android/gms/ads/internal/client/zzdq;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdgi;->I(Lcom/google/android/gms/ads/internal/client/zzdq;Lcom/google/android/gms/internal/ads/zzbnu;)Lcom/google/android/gms/internal/ads/zzdgh;

    move-result-object v2

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnr;->Ra()Lcom/google/android/gms/internal/ads/zzbdp;

    move-result-object v3

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnr;->g()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->K(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/view/View;

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnr;->m()Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnr;->Va()Ljava/util/List;

    move-result-object v6

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnr;->l()Ljava/lang/String;

    move-result-object v7

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnr;->b()Landroid/os/Bundle;

    move-result-object v8

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnr;->k()Ljava/lang/String;

    move-result-object v9

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnr;->Ta()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdgi;->K(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/view/View;

    .line 10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnr;->Ua()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    .line 11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnr;->Sa()Lcom/google/android/gms/internal/ads/zzbdx;

    move-result-object v16

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnr;->j()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    .line 13
    invoke-static/range {v2 .. v18}, Lcom/google/android/gms/internal/ads/zzdgi;->J(Lcom/google/android/gms/ads/internal/client/zzdq;Lcom/google/android/gms/internal/ads/zzbdp;Landroid/view/View;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/view/View;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Ljava/lang/String;DLcom/google/android/gms/internal/ads/zzbdx;Ljava/lang/String;F)Lcom/google/android/gms/internal/ads/zzdgi;

    move-result-object v0
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4d} :catch_4e

    return-object v0

    :catch_4e
    move-exception v0

    const-string v2, "Failed to get native ad assets from content ad mapper"

    .line 14
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzbza;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private static I(Lcom/google/android/gms/ads/internal/client/zzdq;Lcom/google/android/gms/internal/ads/zzbnu;)Lcom/google/android/gms/internal/ads/zzdgh;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdgh;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdgh;-><init>(Lcom/google/android/gms/ads/internal/client/zzdq;Lcom/google/android/gms/internal/ads/zzbnu;)V

    return-object v0
.end method

.method private static J(Lcom/google/android/gms/ads/internal/client/zzdq;Lcom/google/android/gms/internal/ads/zzbdp;Landroid/view/View;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/view/View;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Ljava/lang/String;DLcom/google/android/gms/internal/ads/zzbdx;Ljava/lang/String;F)Lcom/google/android/gms/internal/ads/zzdgi;
    .registers 20

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdgi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdgi;-><init>()V

    const/4 v1, 0x6

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzdgi;->a:I

    move-object v1, p0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdgi;->b:Lcom/google/android/gms/ads/internal/client/zzdq;

    move-object v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdgi;->c:Lcom/google/android/gms/internal/ads/zzbdp;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdgi;->d:Landroid/view/View;

    const-string v1, "headline"

    move-object v2, p3

    .line 2
    invoke-virtual {v0, v1, p3}, Lcom/google/android/gms/internal/ads/zzdgi;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdgi;->e:Ljava/util/List;

    const-string v1, "body"

    move-object v2, p5

    .line 3
    invoke-virtual {v0, v1, p5}, Lcom/google/android/gms/internal/ads/zzdgi;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdgi;->h:Landroid/os/Bundle;

    const-string v1, "call_to_action"

    move-object v2, p7

    .line 4
    invoke-virtual {v0, v1, p7}, Lcom/google/android/gms/internal/ads/zzdgi;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdgi;->m:Landroid/view/View;

    move-object v1, p9

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdgi;->p:Lcom/google/android/gms/dynamic/IObjectWrapper;

    const-string v1, "store"

    move-object v2, p10

    .line 5
    invoke-virtual {v0, v1, p10}, Lcom/google/android/gms/internal/ads/zzdgi;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "price"

    move-object v2, p11

    .line 6
    invoke-virtual {v0, v1, p11}, Lcom/google/android/gms/internal/ads/zzdgi;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v1, p12

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzdgi;->q:D

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzdgi;->r:Lcom/google/android/gms/internal/ads/zzbdx;

    const-string v1, "advertiser"

    move-object/from16 v2, p15

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdgi;->w(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v1, p16

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdgi;->q(F)V

    return-object v0
.end method

.method private static K(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_4
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->t1(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static c0(Lcom/google/android/gms/internal/ads/zzbnu;)Lcom/google/android/gms/internal/ads/zzdgi;
    .registers 19

    .line 1
    :try_start_0
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnu;->h()Lcom/google/android/gms/ads/internal/client/zzdq;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdgi;->I(Lcom/google/android/gms/ads/internal/client/zzdq;Lcom/google/android/gms/internal/ads/zzbnu;)Lcom/google/android/gms/internal/ads/zzdgh;

    move-result-object v0

    .line 2
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnu;->i()Lcom/google/android/gms/internal/ads/zzbdp;

    move-result-object v2

    .line 3
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnu;->l()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdgi;->K(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 4
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnu;->q()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnu;->t()Ljava/util/List;

    move-result-object v5

    .line 6
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnu;->r()Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnu;->g()Landroid/os/Bundle;

    move-result-object v7

    .line 8
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnu;->p()Ljava/lang/String;

    move-result-object v8

    .line 9
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnu;->k()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzdgi;->K(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 10
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnu;->m()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v10

    .line 11
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnu;->v()Ljava/lang/String;

    move-result-object v11

    .line 12
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnu;->x()Ljava/lang/String;

    move-result-object v12

    .line 13
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnu;->b()D

    move-result-wide v13

    .line 14
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnu;->j()Lcom/google/android/gms/internal/ads/zzbdx;

    move-result-object v15

    .line 15
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnu;->n()Ljava/lang/String;

    move-result-object v16

    .line 16
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbnu;->c()F

    move-result v17

    move-object v1, v0

    .line 17
    invoke-static/range {v1 .. v17}, Lcom/google/android/gms/internal/ads/zzdgi;->J(Lcom/google/android/gms/ads/internal/client/zzdq;Lcom/google/android/gms/internal/ads/zzbdp;Landroid/view/View;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/view/View;Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Ljava/lang/String;DLcom/google/android/gms/internal/ads/zzbdx;Ljava/lang/String;F)Lcom/google/android/gms/internal/ads/zzdgi;

    move-result-object v0
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_57} :catch_58

    return-object v0

    :catch_58
    move-exception v0

    const-string v1, "Failed to get native ad assets from unified ad mapper"

    .line 18
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzbza;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized A()D
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->q:D
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized B(Lcom/google/android/gms/internal/ads/zzcei;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgi;->i:Lcom/google/android/gms/internal/ads/zzcei;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized C(Landroid/view/View;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgi;->o:Landroid/view/View;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized D(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgi;->l:Lcom/google/android/gms/dynamic/IObjectWrapper;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized L()F
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->w:F
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized M()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->a:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized N()Landroid/os/Bundle;
    .registers 2

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->h:Landroid/os/Bundle;

    if-nez v0, :cond_c

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->h:Landroid/os/Bundle;

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->h:Landroid/os/Bundle;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized O()Landroid/view/View;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->d:Landroid/view/View;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized P()Landroid/view/View;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->m:Landroid/view/View;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized Q()Landroid/view/View;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->o:Landroid/view/View;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized R()Lo/g;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->u:Lo/g;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized S()Lo/g;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->v:Lo/g;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized T()Lcom/google/android/gms/ads/internal/client/zzdq;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->b:Lcom/google/android/gms/ads/internal/client/zzdq;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized U()Lcom/google/android/gms/ads/internal/client/zzel;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->g:Lcom/google/android/gms/ads/internal/client/zzel;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized V()Lcom/google/android/gms/internal/ads/zzbdp;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->c:Lcom/google/android/gms/internal/ads/zzbdp;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final W()Lcom/google/android/gms/internal/ads/zzbdx;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->e:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_1e

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->e:Ljava/util/List;

    const/4 v2, 0x0

    .line 2
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 3
    instance-of v2, v0, Landroid/os/IBinder;

    if-eqz v2, :cond_1e

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbdw;->Sa(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbdx;

    move-result-object v0

    return-object v0

    :cond_1e
    :goto_1e
    return-object v1
.end method

.method public final declared-synchronized X()Lcom/google/android/gms/internal/ads/zzbdx;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->r:Lcom/google/android/gms/internal/ads/zzbdx;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized Y()Lcom/google/android/gms/internal/ads/zzbdx;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->s:Lcom/google/android/gms/internal/ads/zzbdx;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized Z()Lcom/google/android/gms/internal/ads/zzcei;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->j:Lcom/google/android/gms/internal/ads/zzcei;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    const-string v0, "headline"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdgi;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a0()Lcom/google/android/gms/internal/ads/zzcei;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->k:Lcom/google/android/gms/internal/ads/zzcei;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->x:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b0()Lcom/google/android/gms/internal/ads/zzcei;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->i:Lcom/google/android/gms/internal/ads/zzcei;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    const-string v0, "price"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdgi;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    const-string v0, "store"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdgi;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d0()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->p:Lcom/google/android/gms/dynamic/IObjectWrapper;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->v:Lo/g;

    invoke-virtual {v0, p1}, Lo/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object p1

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e0()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->l:Lcom/google/android/gms/dynamic/IObjectWrapper;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()Ljava/util/List;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->e:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f0()Lcom/google/android/gms/internal/ads/zzfut;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->n:Lcom/google/android/gms/internal/ads/zzfut;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()Ljava/util/List;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->f:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g0()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    const-string v0, "advertiser"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdgi;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h()V
    .registers 3

    monitor-enter p0

    .line 1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->i:Lcom/google/android/gms/internal/ads/zzcei;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcei;->destroy()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdgi;->i:Lcom/google/android/gms/internal/ads/zzcei;

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->j:Lcom/google/android/gms/internal/ads/zzcei;

    if-eqz v0, :cond_14

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcei;->destroy()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdgi;->j:Lcom/google/android/gms/internal/ads/zzcei;

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->k:Lcom/google/android/gms/internal/ads/zzcei;

    if-eqz v0, :cond_1d

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcei;->destroy()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdgi;->k:Lcom/google/android/gms/internal/ads/zzcei;

    :cond_1d
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdgi;->l:Lcom/google/android/gms/dynamic/IObjectWrapper;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->u:Lo/g;

    .line 4
    invoke-virtual {v0}, Lo/g;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->v:Lo/g;

    .line 5
    invoke-virtual {v0}, Lo/g;->clear()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdgi;->b:Lcom/google/android/gms/ads/internal/client/zzdq;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdgi;->c:Lcom/google/android/gms/internal/ads/zzbdp;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdgi;->d:Landroid/view/View;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdgi;->e:Ljava/util/List;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdgi;->h:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdgi;->m:Landroid/view/View;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdgi;->o:Landroid/view/View;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdgi;->p:Lcom/google/android/gms/dynamic/IObjectWrapper;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdgi;->r:Lcom/google/android/gms/internal/ads/zzbdx;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdgi;->s:Lcom/google/android/gms/internal/ads/zzbdx;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzdgi;->t:Ljava/lang/String;
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_41

    monitor-exit p0

    return-void

    :catchall_41
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h0()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    const-string v0, "body"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdgi;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i(Lcom/google/android/gms/internal/ads/zzbdp;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgi;->c:Lcom/google/android/gms/internal/ads/zzbdp;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized i0()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    const-string v0, "call_to_action"

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzdgi;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized j(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgi;->t:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized j0()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->t:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized k(Lcom/google/android/gms/ads/internal/client/zzel;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgi;->g:Lcom/google/android/gms/ads/internal/client/zzel;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized l(Lcom/google/android/gms/internal/ads/zzbdx;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgi;->r:Lcom/google/android/gms/internal/ads/zzbdx;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized m(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdj;)V
    .registers 4

    monitor-enter p0

    if-nez p2, :cond_a

    .line 1
    :try_start_3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdgi;->u:Lo/g;

    invoke-virtual {p2, p1}, Lo/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_11

    monitor-exit p0

    return-void

    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->u:Lo/g;

    .line 2
    invoke-virtual {v0, p1, p2}, Lo/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_11

    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized n(Lcom/google/android/gms/internal/ads/zzcei;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgi;->j:Lcom/google/android/gms/internal/ads/zzcei;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized o(Ljava/util/List;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgi;->e:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized p(Lcom/google/android/gms/internal/ads/zzbdx;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgi;->s:Lcom/google/android/gms/internal/ads/zzbdx;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized q(F)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdgi;->w:F
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized r(Ljava/util/List;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgi;->f:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized s(Lcom/google/android/gms/internal/ads/zzcei;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgi;->k:Lcom/google/android/gms/internal/ads/zzcei;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized t(Lcom/google/android/gms/internal/ads/zzfut;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgi;->n:Lcom/google/android/gms/internal/ads/zzfut;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized u(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgi;->x:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized v(D)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzdgi;->q:D
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    if-nez p2, :cond_a

    .line 1
    :try_start_3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdgi;->v:Lo/g;

    invoke-virtual {p2, p1}, Lo/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_11

    monitor-exit p0

    return-void

    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdgi;->v:Lo/g;

    .line 2
    invoke-virtual {v0, p1, p2}, Lo/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_11

    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized x(I)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzdgi;->a:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized y(Lcom/google/android/gms/ads/internal/client/zzdq;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgi;->b:Lcom/google/android/gms/ads/internal/client/zzdq;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized z(Landroid/view/View;)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdgi;->m:Landroid/view/View;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method
