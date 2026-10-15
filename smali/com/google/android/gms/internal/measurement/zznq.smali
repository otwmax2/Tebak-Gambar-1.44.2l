###### Class com.google.android.gms.internal.measurement.zznq (com.google.android.gms.internal.measurement.zznq)
.class public final Lcom/google/android/gms/internal/measurement/zznq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzif;


# static fields
.field private static final p:Lcom/google/android/gms/internal/measurement/zznq;


# instance fields
.field private final o:Lcom/google/android/gms/internal/measurement/zzif;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zznq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zznq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zznq;->p:Lcom/google/android/gms/internal/measurement/zznq;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzns;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzns;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzij;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzij;->a(Lcom/google/android/gms/internal/measurement/zzif;)Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zznq;->o:Lcom/google/android/gms/internal/measurement/zzif;

    return-void
.end method

.method public static A()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->p:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->i()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->m()J

    move-result-wide v0

    return-wide v0
.end method

.method public static B()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->p:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->i()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->n()J

    move-result-wide v0

    return-wide v0
.end method

.method public static C()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->p:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->i()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->r()J

    move-result-wide v0

    return-wide v0
.end method

.method public static D()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->p:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->i()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->p()J

    move-result-wide v0

    return-wide v0
.end method

.method public static E()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->p:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->i()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->q()J

    move-result-wide v0

    return-wide v0
.end method

.method public static F()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->p:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->i()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->x()J

    move-result-wide v0

    return-wide v0
.end method

.method public static G()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->p:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->i()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->v()J

    move-result-wide v0

    return-wide v0
.end method

.method public static H()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->p:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->i()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->t()J

    move-result-wide v0

    return-wide v0
.end method

.method public static I()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->p:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->i()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->C()J

    move-result-wide v0

    return-wide v0
.end method

.method public static J()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->p:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->i()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->y()J

    move-result-wide v0

    return-wide v0
.end method

.method public static K()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->p:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->i()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->E()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->p:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->i()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->N()J

    move-result-wide v0

    return-wide v0
.end method

.method public static b()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->p:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->i()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->B()J

    move-result-wide v0

    return-wide v0
.end method

.method public static c()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->p:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->i()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->R()J

    move-result-wide v0

    return-wide v0
.end method

.method public static d()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->p:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->i()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->f0()J

    move-result-wide v0

    return-wide v0
.end method

.method public static e()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->p:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->i()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->u()J

    move-result-wide v0

    return-wide v0
.end method

.method public static f()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->p:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->i()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->H()J

    move-result-wide v0

    return-wide v0
.end method

.method public static g()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->p:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->i()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->L()J

    move-result-wide v0

    return-wide v0
.end method

.method public static h()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->p:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->i()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->V()J

    move-result-wide v0

    return-wide v0
.end method

.method public static j()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->p:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->i()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->h0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static k()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->p:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->i()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->T()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static l()Ljava/lang/String;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->p:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->i()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static m()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->p:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->i()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zza()J

    move-result-wide v0

    return-wide v0
.end method

.method public static n()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->p:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->i()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->zzb()J

    move-result-wide v0

    return-wide v0
.end method

.method public static o()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->p:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->i()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public static p()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->p:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->i()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public static q()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->p:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->i()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method public static r()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->p:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->i()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public static s()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->p:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->i()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public static t()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->p:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->i()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public static u()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->p:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->i()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public static v()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->p:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->i()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method public static w()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->p:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->i()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->i()J

    move-result-wide v0

    return-wide v0
.end method

.method public static x()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->p:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->i()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public static y()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->p:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->i()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public static z()J
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zznq;->p:Lcom/google/android/gms/internal/measurement/zznq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zznq;->i()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zznr;->k()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final i()Lcom/google/android/gms/internal/measurement/zznr;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zznq;->o:Lcom/google/android/gms/internal/measurement/zzif;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzif;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zznr;

    return-object v0
.end method

.method public final bridge synthetic zza()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zznq;->i()Lcom/google/android/gms/internal/measurement/zznr;

    move-result-object v0

    return-object v0
.end method
