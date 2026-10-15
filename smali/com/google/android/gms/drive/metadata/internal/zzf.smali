###### Class com.google.android.gms.drive.metadata.internal.zzf (com.google.android.gms.drive.metadata.internal.zzf)
.class public final Lcom/google/android/gms/drive/metadata/internal/zzf;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/drive/metadata/MetadataField<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/drive/metadata/internal/zzg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/metadata/internal/zzf;->a:Ljava/util/Map;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/metadata/internal/zzf;->b:Ljava/util/Map;

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->a:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->G:Lcom/google/android/gms/internal/drive/zzib;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->x:Lcom/google/android/gms/internal/drive/zzhx;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->E:Lcom/google/android/gms/internal/drive/zzia;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->H:Lcom/google/android/gms/internal/drive/zzic;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->n:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 9
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->m:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 10
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->o:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 11
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->p:Lcom/google/android/gms/internal/drive/zzhw;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->q:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 13
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->k:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->s:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 15
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->t:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->u:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 17
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->C:Lcom/google/android/gms/drive/metadata/internal/zzo;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 18
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->b:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->z:Lcom/google/android/gms/drive/metadata/zzb;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 20
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->d:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 21
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->l:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 22
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->e:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->f:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->g:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->h:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 26
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->w:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 27
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->r:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->y:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 29
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->A:Lcom/google/android/gms/drive/metadata/internal/zzu;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 30
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->B:Lcom/google/android/gms/drive/metadata/internal/zzu;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 31
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->D:Lcom/google/android/gms/internal/drive/zzhy;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 32
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->I:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 33
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->J:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 34
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->j:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 35
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->i:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 36
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->F:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 37
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->v:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 38
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->c:Lcom/google/android/gms/internal/drive/zzhv;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 39
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->K:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 40
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->L:Lcom/google/android/gms/drive/metadata/internal/zzb;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 41
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->M:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 42
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->N:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 43
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->O:Lcom/google/android/gms/internal/drive/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 44
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->P:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 45
    sget-object v0, Lcom/google/android/gms/internal/drive/zzhs;->Q:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 46
    sget-object v0, Lcom/google/android/gms/internal/drive/zzif;->a:Lcom/google/android/gms/internal/drive/zzig;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 47
    sget-object v0, Lcom/google/android/gms/internal/drive/zzif;->c:Lcom/google/android/gms/internal/drive/zzij;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 48
    sget-object v0, Lcom/google/android/gms/internal/drive/zzif;->d:Lcom/google/android/gms/internal/drive/zzii;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 49
    sget-object v0, Lcom/google/android/gms/internal/drive/zzif;->e:Lcom/google/android/gms/internal/drive/zzil;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 50
    sget-object v0, Lcom/google/android/gms/internal/drive/zzif;->b:Lcom/google/android/gms/internal/drive/zzih;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 51
    sget-object v0, Lcom/google/android/gms/internal/drive/zzif;->f:Lcom/google/android/gms/internal/drive/zzik;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 52
    sget-object v0, Lcom/google/android/gms/internal/drive/zzin;->a:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 53
    sget-object v0, Lcom/google/android/gms/internal/drive/zzin;->b:Lcom/google/android/gms/drive/metadata/MetadataField;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->c(Lcom/google/android/gms/drive/metadata/MetadataField;)V

    .line 54
    sget-object v0, Lcom/google/android/gms/drive/metadata/internal/zzo;->e:Lcom/google/android/gms/drive/metadata/internal/zzg;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->b(Lcom/google/android/gms/drive/metadata/internal/zzg;)V

    .line 55
    sget-object v0, Lcom/google/android/gms/internal/drive/zzid;->e:Lcom/google/android/gms/drive/metadata/internal/zzg;

    invoke-static {v0}, Lcom/google/android/gms/drive/metadata/internal/zzf;->b(Lcom/google/android/gms/drive/metadata/internal/zzg;)V

    return-void
.end method

.method public static a(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/google/android/gms/drive/metadata/internal/zzf;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/drive/metadata/internal/zzg;

    .line 2
    invoke-interface {v1, p0}, Lcom/google/android/gms/drive/metadata/internal/zzg;->p1(Lcom/google/android/gms/common/data/DataHolder;)V

    goto :goto_a

    :cond_1a
    return-void
.end method

.method private static b(Lcom/google/android/gms/drive/metadata/internal/zzg;)V
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/drive/metadata/internal/zzf;->b:Ljava/util/Map;

    invoke-interface {p0}, Lcom/google/android/gms/drive/metadata/internal/zzg;->m1()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    return-void

    .line 2
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 3
    invoke-interface {p0}, Lcom/google/android/gms/drive/metadata/internal/zzg;->m1()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "A cleaner for key "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " has already been registered"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static c(Lcom/google/android/gms/drive/metadata/MetadataField;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/drive/metadata/MetadataField<",
            "*>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/drive/metadata/internal/zzf;->a:Ljava/util/Map;

    invoke-interface {p0}, Lcom/google/android/gms/drive/metadata/MetadataField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Duplicate field name registered: "

    invoke-interface {p0}, Lcom/google/android/gms/drive/metadata/MetadataField;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_28

    :cond_23
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_28
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2c
    invoke-interface {p0}, Lcom/google/android/gms/drive/metadata/MetadataField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static d(Ljava/lang/String;)Lcom/google/android/gms/drive/metadata/MetadataField;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/drive/metadata/MetadataField<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/drive/metadata/internal/zzf;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/drive/metadata/MetadataField;

    return-object p0
.end method
