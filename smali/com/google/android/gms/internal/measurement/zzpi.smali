###### Class com.google.android.gms.internal.measurement.zzpi (com.google.android.gms.internal.measurement.zzpi)
.class public final Lcom/google/android/gms/internal/measurement/zzpi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@20.1.2"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzph;


# static fields
.field public static final a:Lcom/google/android/gms/internal/measurement/zzhy;

.field public static final b:Lcom/google/android/gms/internal/measurement/zzhy;

.field public static final c:Lcom/google/android/gms/internal/measurement/zzhy;

.field public static final d:Lcom/google/android/gms/internal/measurement/zzhy;

.field public static final e:Lcom/google/android/gms/internal/measurement/zzhy;

.field public static final f:Lcom/google/android/gms/internal/measurement/zzhy;

.field public static final g:Lcom/google/android/gms/internal/measurement/zzhy;

.field public static final h:Lcom/google/android/gms/internal/measurement/zzhy;

.field public static final i:Lcom/google/android/gms/internal/measurement/zzhy;

.field public static final j:Lcom/google/android/gms/internal/measurement/zzhy;

.field public static final k:Lcom/google/android/gms/internal/measurement/zzhy;

.field public static final l:Lcom/google/android/gms/internal/measurement/zzhy;

.field public static final m:Lcom/google/android/gms/internal/measurement/zzhy;


# direct methods
.method static constructor <clinit>()V
    .registers 4

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

    const-string v1, "measurement.redaction.app_instance_id"

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhv;->f(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhy;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpi;->a:Lcom/google/android/gms/internal/measurement/zzhy;

    const-string v1, "measurement.redaction.client_ephemeral_aiid_generation"

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhv;->f(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhy;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpi;->b:Lcom/google/android/gms/internal/measurement/zzhy;

    const-string v1, "measurement.redaction.config_redacted_fields"

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhv;->f(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhy;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpi;->c:Lcom/google/android/gms/internal/measurement/zzhy;

    const-string v1, "measurement.redaction.device_info"

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhv;->f(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhy;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpi;->d:Lcom/google/android/gms/internal/measurement/zzhy;

    const-string v1, "measurement.redaction.e_tag"

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhv;->f(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhy;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpi;->e:Lcom/google/android/gms/internal/measurement/zzhy;

    const-string v1, "measurement.redaction.enhanced_uid"

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhv;->f(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhy;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpi;->f:Lcom/google/android/gms/internal/measurement/zzhy;

    const-string v1, "measurement.redaction.populate_ephemeral_app_instance_id"

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhv;->f(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhy;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpi;->g:Lcom/google/android/gms/internal/measurement/zzhy;

    const-string v1, "measurement.redaction.google_signals"

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhv;->f(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhy;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpi;->h:Lcom/google/android/gms/internal/measurement/zzhy;

    const-string v1, "measurement.redaction.no_aiid_in_config_request"

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhv;->f(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhy;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpi;->i:Lcom/google/android/gms/internal/measurement/zzhy;

    const-string v1, "measurement.redaction.upload_redacted_fields"

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhv;->f(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhy;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpi;->j:Lcom/google/android/gms/internal/measurement/zzhy;

    const-string v1, "measurement.redaction.upload_subdomain_override"

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhv;->f(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhy;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpi;->k:Lcom/google/android/gms/internal/measurement/zzhy;

    const-string v1, "measurement.redaction.user_id"

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/zzhv;->f(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzhy;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/measurement/zzpi;->l:Lcom/google/android/gms/internal/measurement/zzhy;

    const-string v1, "measurement.id.redaction"

    const-wide/16 v2, 0x0

    .line 15
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/zzhv;->d(Ljava/lang/String;J)Lcom/google/android/gms/internal/measurement/zzhy;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zzpi;->m:Lcom/google/android/gms/internal/measurement/zzhy;

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
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpi;->b:Lcom/google/android/gms/internal/measurement/zzhy;

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
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpi;->d:Lcom/google/android/gms/internal/measurement/zzhy;

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
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpi;->e:Lcom/google/android/gms/internal/measurement/zzhy;

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
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpi;->c:Lcom/google/android/gms/internal/measurement/zzhy;

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
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpi;->f:Lcom/google/android/gms/internal/measurement/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final f()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpi;->g:Lcom/google/android/gms/internal/measurement/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final g()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpi;->h:Lcom/google/android/gms/internal/measurement/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final h()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpi;->i:Lcom/google/android/gms/internal/measurement/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final i()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpi;->j:Lcom/google/android/gms/internal/measurement/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpi;->k:Lcom/google/android/gms/internal/measurement/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final l()Z
    .registers 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpi;->l:Lcom/google/android/gms/internal/measurement/zzhy;

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
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzpi;->a:Lcom/google/android/gms/internal/measurement/zzhy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzhy;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
