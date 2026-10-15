###### Class com.google.android.gms.internal.ads.zzdzn (com.google.android.gms.internal.ads.zzdzn)
.class public final Lcom/google/android/gms/internal/ads/zzdzn;
.super Lcom/google/android/gms/internal/ads/zzdzo;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final h:Landroid/util/SparseArray;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/internal/ads/zzctt;

.field private final e:Landroid/telephony/TelephonyManager;

.field private final f:Lcom/google/android/gms/internal/ads/zzdzf;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdzn;->h:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 2
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzayr;->r:Lcom/google/android/gms/internal/ads/zzayr;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    .line 3
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzayr;->q:Lcom/google/android/gms/internal/ads/zzayr;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    .line 4
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    .line 5
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    .line 6
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v3, Lcom/google/android/gms/internal/ads/zzayr;->s:Lcom/google/android/gms/internal/ads/zzayr;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    .line 7
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v3, Lcom/google/android/gms/internal/ads/zzayr;->t:Lcom/google/android/gms/internal/ads/zzayr;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 8
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    .line 9
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    .line 10
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    .line 11
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    .line 12
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    sget-object v3, Lcom/google/android/gms/internal/ads/zzayr;->u:Lcom/google/android/gms/internal/ads/zzayr;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    .line 13
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    .line 14
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzctt;Lcom/google/android/gms/internal/ads/zzdzf;Lcom/google/android/gms/internal/ads/zzdzb;Lcom/google/android/gms/ads/internal/util/zzg;)V
    .registers 6

    .line 1
    invoke-direct {p0, p4, p5}, Lcom/google/android/gms/internal/ads/zzdzo;-><init>(Lcom/google/android/gms/internal/ads/zzdzb;Lcom/google/android/gms/ads/internal/util/zzg;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzn;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdzn;->d:Lcom/google/android/gms/internal/ads/zzctt;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdzn;->f:Lcom/google/android/gms/internal/ads/zzdzf;

    const-string p2, "phone"

    .line 2
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzn;->e:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method static bridge synthetic b(Lcom/google/android/gms/internal/ads/zzdzn;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzayi;
    .registers 6

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzayi;->I()Lcom/google/android/gms/internal/ads/zzayb;

    move-result-object v0

    const-string v1, "cnt"

    const/4 v2, -0x2

    .line 2
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "gnt"

    const/4 v3, 0x0

    .line 3
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v2, 0x2

    const/4 v3, -0x1

    if-ne v1, v3, :cond_19

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzdzn;->g:I

    goto :goto_37

    :cond_19
    const/4 v3, 0x1

    .line 4
    iput v3, p0, Lcom/google/android/gms/internal/ads/zzdzn;->g:I

    const/4 p0, 0x3

    if-eqz v1, :cond_29

    if-eq v1, v3, :cond_25

    .line 5
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzayb;->p(I)Lcom/google/android/gms/internal/ads/zzayb;

    goto :goto_2c

    .line 6
    :cond_25
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzayb;->p(I)Lcom/google/android/gms/internal/ads/zzayb;

    goto :goto_2c

    .line 7
    :cond_29
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzayb;->p(I)Lcom/google/android/gms/internal/ads/zzayb;

    :goto_2c
    packed-switch p1, :pswitch_data_3e

    const/4 v2, 0x1

    goto :goto_34

    :pswitch_31
    const/4 v2, 0x5

    goto :goto_34

    :pswitch_33
    const/4 v2, 0x3

    .line 8
    :goto_34
    :pswitch_34
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzayb;->o(I)Lcom/google/android/gms/internal/ads/zzayb;

    .line 9
    :goto_37
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzayi;

    return-object p0

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_34
        :pswitch_34
        :pswitch_33
        :pswitch_34
        :pswitch_33
        :pswitch_33
        :pswitch_34
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_34
        :pswitch_33
        :pswitch_31
        :pswitch_33
        :pswitch_33
        :pswitch_34
        :pswitch_33
    .end packed-switch
.end method

.method static bridge synthetic c(Lcom/google/android/gms/internal/ads/zzdzn;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzayr;
    .registers 3

    const-string p0, "device"

    .line 1
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzezi;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "network"

    .line 2
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzezi;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "active_network_state"

    const/4 v0, -0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzdzn;->h:Landroid/util/SparseArray;

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzayr;->p:Lcom/google/android/gms/internal/ads/zzayr;

    invoke-virtual {p1, p0, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzayr;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/google/android/gms/internal/ads/zzdzn;)Lcom/google/android/gms/internal/ads/zzdzf;
    .registers 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdzn;->f:Lcom/google/android/gms/internal/ads/zzdzf;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/google/android/gms/internal/ads/zzdzn;ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzayi;Lcom/google/android/gms/internal/ads/zzayr;)[B
    .registers 10

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzayn;->Q()Lcom/google/android/gms/internal/ads/zzaym;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzaym;->o(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzaym;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdzn;->c:Landroid/content/Context;

    .line 3
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    .line 4
    invoke-static {p2, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_19

    const/4 p2, 0x1

    goto :goto_1a

    :cond_19
    const/4 p2, 0x0

    :goto_1a
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzdzn;->g(Z)I

    move-result p2

    .line 5
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzaym;->x(I)Lcom/google/android/gms/internal/ads/zzaym;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->s()Lcom/google/android/gms/ads/internal/util/zzaa;

    move-result-object p2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdzn;->c:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdzn;->e:Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, v3, v4}, Lcom/google/android/gms/ads/internal/util/zzaa;->h(Landroid/content/Context;Landroid/telephony/TelephonyManager;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzaym;->y(I)Lcom/google/android/gms/internal/ads/zzaym;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdzn;->f:Lcom/google/android/gms/internal/ads/zzdzf;

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdzf;->e()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzaym;->u(J)Lcom/google/android/gms/internal/ads/zzaym;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdzn;->f:Lcom/google/android/gms/internal/ads/zzdzf;

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdzf;->b()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzaym;->s(J)Lcom/google/android/gms/internal/ads/zzaym;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdzn;->f:Lcom/google/android/gms/internal/ads/zzdzf;

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdzf;->a()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzaym;->p(I)Lcom/google/android/gms/internal/ads/zzaym;

    .line 10
    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ads/zzaym;->q(Lcom/google/android/gms/internal/ads/zzayr;)Lcom/google/android/gms/internal/ads/zzaym;

    .line 11
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzaym;->r(Lcom/google/android/gms/internal/ads/zzayi;)Lcom/google/android/gms/internal/ads/zzaym;

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzdzn;->g:I

    .line 12
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzaym;->z(I)Lcom/google/android/gms/internal/ads/zzaym;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdzn;->g(Z)I

    move-result p1

    .line 13
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaym;->A(I)Lcom/google/android/gms/internal/ads/zzaym;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdzn;->f:Lcom/google/android/gms/internal/ads/zzdzf;

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdzf;->d()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaym;->w(J)Lcom/google/android/gms/internal/ads/zzaym;

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->b()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaym;->v(J)Lcom/google/android/gms/internal/ads/zzaym;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdzn;->c:Landroid/content/Context;

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "wifi_on"

    .line 17
    invoke-static {p0, p1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_80

    const/4 v2, 0x1

    :cond_80
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdzn;->g(Z)I

    move-result p0

    .line 18
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzaym;->B(I)Lcom/google/android/gms/internal/ads/zzaym;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgqi;->k()Lcom/google/android/gms/internal/ads/zzgqm;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzayn;

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgon;->t()[B

    move-result-object p0

    return-object p0
.end method

.method private static final g(Z)I
    .registers 1

    if-eqz p0, :cond_4

    const/4 p0, 0x2

    return p0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final e(Z)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdzn;->d:Lcom/google/android/gms/internal/ads/zzctt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzctt;->b()Lcom/google/android/gms/internal/ads/zzfut;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdzm;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzdzm;-><init>(Lcom/google/android/gms/internal/ads/zzdzn;Z)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbzn;->f:Lcom/google/android/gms/internal/ads/zzfuu;

    .line 2
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfuj;->q(Lcom/google/android/gms/internal/ads/zzfut;Lcom/google/android/gms/internal/ads/zzfuf;Ljava/util/concurrent/Executor;)V

    return-void
.end method
