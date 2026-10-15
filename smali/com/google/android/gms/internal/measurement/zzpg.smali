###### Class com.google.android.gms.internal.measurement.zzpg (com.google.android.gms.internal.measurement.zzpg)
.class public final Lcom/google/android/gms/internal/measurement/zzpg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzif;


# static fields
.field private static final p:Lcom/google/android/gms/internal/measurement/zzpg;


# instance fields
.field private final o:Lcom/google/android/gms/internal/measurement/zzif;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzpg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzpg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzpg;->p:Lcom/google/android/gms/internal/measurement/zzpg;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzpi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzpi;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzij;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzij;->a(Lcom/google/android/gms/internal/measurement/zzif;)Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzpg;->o:Lcom/google/android/gms/internal/measurement/zzif;

    return-void
.end method

.method public static b()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpg;->p:Lcom/google/android/gms/internal/measurement/zzpg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzpg;->a()Lcom/google/android/gms/internal/measurement/zzph;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzph;->zza()Z

    const/4 v0, 0x1

    return v0
.end method

.method public static c()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpg;->p:Lcom/google/android/gms/internal/measurement/zzpg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzpg;->a()Lcom/google/android/gms/internal/measurement/zzph;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzph;->zzb()Z

    move-result v0

    return v0
.end method

.method public static d()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpg;->p:Lcom/google/android/gms/internal/measurement/zzpg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzpg;->a()Lcom/google/android/gms/internal/measurement/zzph;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzph;->a()Z

    move-result v0

    return v0
.end method

.method public static e()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpg;->p:Lcom/google/android/gms/internal/measurement/zzpg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzpg;->a()Lcom/google/android/gms/internal/measurement/zzph;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzph;->d()Z

    move-result v0

    return v0
.end method

.method public static f()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpg;->p:Lcom/google/android/gms/internal/measurement/zzpg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzpg;->a()Lcom/google/android/gms/internal/measurement/zzph;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzph;->b()Z

    move-result v0

    return v0
.end method

.method public static g()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpg;->p:Lcom/google/android/gms/internal/measurement/zzpg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzpg;->a()Lcom/google/android/gms/internal/measurement/zzph;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzph;->c()Z

    move-result v0

    return v0
.end method

.method public static h()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpg;->p:Lcom/google/android/gms/internal/measurement/zzpg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzpg;->a()Lcom/google/android/gms/internal/measurement/zzph;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzph;->e()Z

    move-result v0

    return v0
.end method

.method public static i()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpg;->p:Lcom/google/android/gms/internal/measurement/zzpg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzpg;->a()Lcom/google/android/gms/internal/measurement/zzph;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzph;->f()Z

    move-result v0

    return v0
.end method

.method public static j()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpg;->p:Lcom/google/android/gms/internal/measurement/zzpg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzpg;->a()Lcom/google/android/gms/internal/measurement/zzph;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzph;->g()Z

    move-result v0

    return v0
.end method

.method public static k()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpg;->p:Lcom/google/android/gms/internal/measurement/zzpg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzpg;->a()Lcom/google/android/gms/internal/measurement/zzph;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzph;->h()Z

    move-result v0

    return v0
.end method

.method public static l()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpg;->p:Lcom/google/android/gms/internal/measurement/zzpg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzpg;->a()Lcom/google/android/gms/internal/measurement/zzph;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzph;->i()Z

    move-result v0

    return v0
.end method

.method public static m()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpg;->p:Lcom/google/android/gms/internal/measurement/zzpg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzpg;->a()Lcom/google/android/gms/internal/measurement/zzph;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzph;->j()Z

    move-result v0

    return v0
.end method

.method public static n()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpg;->p:Lcom/google/android/gms/internal/measurement/zzpg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzpg;->a()Lcom/google/android/gms/internal/measurement/zzph;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzph;->l()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/measurement/zzph;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzpg;->o:Lcom/google/android/gms/internal/measurement/zzif;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzif;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzph;

    return-object v0
.end method

.method public final bridge synthetic zza()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzpg;->a()Lcom/google/android/gms/internal/measurement/zzph;

    move-result-object v0

    return-object v0
.end method
