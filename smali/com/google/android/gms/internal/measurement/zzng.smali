###### Class com.google.android.gms.internal.measurement.zzng (com.google.android.gms.internal.measurement.zzng)
.class public final Lcom/google/android/gms/internal/measurement/zzng;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zznf;


# static fields
.field public static final a:Lcom/google/android/gms/internal/measurement/zzhy;

.field public static final b:Lcom/google/android/gms/internal/measurement/zzhy;

.field public static final c:Lcom/google/android/gms/internal/measurement/zzhy;

.field public static final d:Lcom/google/android/gms/internal/measurement/zzhy;

.field public static final e:Lcom/google/android/gms/internal/measurement/zzhy;

.field public static final f:Lcom/google/android/gms/internal/measurement/zzhy;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzhv;

    const-string v1, "com.google.android.gms.measurement"

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzho;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzhv;-><init>(Landroid/net/Uri;)V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhv;->b()Lcom/google/android/gms/internal/measurement/zzhv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhv;->a()Lcom/google/android/gms/internal/measurement/zzhv;

    move-result-object v0

    const-string v1, "measurement.adid_zero.app_instance_id_fix"

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhv;->f(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhy;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzng;->a:Lcom/google/android/gms/internal/measurement/zzhy;

    const-string v1, "measurement.adid_zero.service"

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhv;->f(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhy;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzng;->b:Lcom/google/android/gms/internal/measurement/zzhy;

    const-string v1, "measurement.adid_zero.adid_uid"

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhv;->f(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhy;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzng;->c:Lcom/google/android/gms/internal/measurement/zzhy;

    const-string v1, "measurement.adid_zero.remove_lair_if_adidzero_false"

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhv;->f(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhy;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzng;->d:Lcom/google/android/gms/internal/measurement/zzhy;

    const-string v1, "measurement.adid_zero.remove_lair_if_userid_cleared"

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhv;->f(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhy;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzng;->e:Lcom/google/android/gms/internal/measurement/zzhy;

    const-string v1, "measurement.adid_zero.remove_lair_on_id_value_change_only"

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhv;->f(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhy;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzng;->f:Lcom/google/android/gms/internal/measurement/zzhy;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzng;->b:Lcom/google/android/gms/internal/measurement/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzng;->d:Lcom/google/android/gms/internal/measurement/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzng;->e:Lcom/google/android/gms/internal/measurement/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final d()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzng;->c:Lcom/google/android/gms/internal/measurement/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final e()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzng;->f:Lcom/google/android/gms/internal/measurement/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zza()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final zzb()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzng;->a:Lcom/google/android/gms/internal/measurement/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
