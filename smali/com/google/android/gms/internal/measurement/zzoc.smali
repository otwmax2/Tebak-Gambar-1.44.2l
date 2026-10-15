###### Class com.google.android.gms.internal.measurement.zzoc (com.google.android.gms.internal.measurement.zzoc)
.class public final Lcom/google/android/gms/internal/measurement/zzoc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzif;


# static fields
.field private static final p:Lcom/google/android/gms/internal/measurement/zzoc;


# instance fields
.field private final o:Lcom/google/android/gms/internal/measurement/zzif;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzoc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzoc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzoc;->p:Lcom/google/android/gms/internal/measurement/zzoc;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzoe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zzoe;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzij;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzij;->a(Lcom/google/android/gms/internal/measurement/zzif;)Lcom/google/android/gms/internal/measurement/zzif;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzoc;->o:Lcom/google/android/gms/internal/measurement/zzif;

    return-void
.end method

.method public static b()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoc;->p:Lcom/google/android/gms/internal/measurement/zzoc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoc;->a()Lcom/google/android/gms/internal/measurement/zzod;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzod;->zza()Z

    const/4 v0, 0x1

    return v0
.end method

.method public static c()Z
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzoc;->p:Lcom/google/android/gms/internal/measurement/zzoc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzoc;->a()Lcom/google/android/gms/internal/measurement/zzod;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzod;->zzb()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/measurement/zzod;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzoc;->o:Lcom/google/android/gms/internal/measurement/zzif;

    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzif;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzod;

    return-object v0
.end method

.method public final bridge synthetic zza()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzoc;->a()Lcom/google/android/gms/internal/measurement/zzod;

    move-result-object v0

    return-object v0
.end method
