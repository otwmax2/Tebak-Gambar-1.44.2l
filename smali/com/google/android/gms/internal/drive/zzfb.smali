###### Class com.google.android.gms.internal.drive.zzfb (com.google.android.gms.internal.drive.zzfb)
.class public final Lcom/google/android/gms/internal/drive/zzfb;
.super Lcom/google/android/gms/internal/drive/zzkk;

# interfaces
.implements Lcom/google/android/gms/internal/drive/zzls;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/drive/zzfb$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/drive/zzkk<",
        "Lcom/google/android/gms/internal/drive/zzfb;",
        "Lcom/google/android/gms/internal/drive/zzfb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/drive/zzls;"
    }
.end annotation


# static fields
.field private static volatile zzhk:Lcom/google/android/gms/internal/drive/zzmb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/drive/zzmb<",
            "Lcom/google/android/gms/internal/drive/zzfb;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzhp:Lcom/google/android/gms/internal/drive/zzfb;


# instance fields
.field private zzhd:I

.field private zzhe:I

.field private zzhg:J

.field private zzhi:B

.field private zzhm:Ljava/lang/String;

.field private zzhn:J

.field private zzho:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/drive/zzfb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/drive/zzfb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/drive/zzfb;->zzhp:Lcom/google/android/gms/internal/drive/zzfb;

    .line 2
    const-class v1, Lcom/google/android/gms/internal/drive/zzfb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/drive/zzkk;->l(Ljava/lang/Class;Lcom/google/android/gms/internal/drive/zzkk;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzkk;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhi:B

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhe:I

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhm:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhn:J

    .line 6
    iput-wide v0, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhg:J

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzho:I

    return-void
.end method

.method private final A(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhd:I

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhe:I

    return-void
.end method

.method private final B(I)V
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhd:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhd:I

    .line 2
    iput p1, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzho:I

    return-void
.end method

.method private final q(J)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhd:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhd:I

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhg:J

    return-void
.end method

.method static synthetic r(Lcom/google/android/gms/internal/drive/zzfb;I)V
    .registers 2

    const/4 p1, 0x1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/drive/zzfb;->A(I)V

    return-void
.end method

.method static synthetic s(Lcom/google/android/gms/internal/drive/zzfb;J)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zzfb;->z(J)V

    return-void
.end method

.method static synthetic t(Lcom/google/android/gms/internal/drive/zzfb;Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/drive/zzfb;->y(Ljava/lang/String;)V

    return-void
.end method

.method public static u()Lcom/google/android/gms/internal/drive/zzfb$zza;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/drive/zzfb;->zzhp:Lcom/google/android/gms/internal/drive/zzfb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/drive/zzkk;->o()Lcom/google/android/gms/internal/drive/zzkk$zza;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/drive/zzfb$zza;

    return-object v0
.end method

.method static synthetic v()Lcom/google/android/gms/internal/drive/zzfb;
    .registers 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/drive/zzfb;->zzhp:Lcom/google/android/gms/internal/drive/zzfb;

    return-object v0
.end method

.method static synthetic w(Lcom/google/android/gms/internal/drive/zzfb;I)V
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/drive/zzfb;->B(I)V

    return-void
.end method

.method static synthetic x(Lcom/google/android/gms/internal/drive/zzfb;J)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zzfb;->q(J)V

    return-void
.end method

.method private final y(Ljava/lang/String;)V
    .registers 3

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhd:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhm:Ljava/lang/String;

    return-void
.end method

.method private final z(J)V
    .registers 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhd:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhd:I

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhn:J

    return-void
.end method


# virtual methods
.method protected final i(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 1
    sget-object p3, Lcom/google/android/gms/internal/drive/zzfc;->a:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p3, p1

    const/4 p3, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_70

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_11
    if-nez p2, :cond_14

    const/4 v0, 0x0

    :cond_14
    int-to-byte p1, v0

    .line 3
    iput-byte p1, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhi:B

    return-object v1

    .line 4
    :pswitch_18
    iget-byte p1, p0, Lcom/google/android/gms/internal/drive/zzfb;->zzhi:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_1f
    sget-object p1, Lcom/google/android/gms/internal/drive/zzfb;->zzhk:Lcom/google/android/gms/internal/drive/zzmb;

    if-nez p1, :cond_38

    .line 6
    const-class p2, Lcom/google/android/gms/internal/drive/zzfb;

    monitor-enter p2

    .line 7
    :try_start_26
    sget-object p1, Lcom/google/android/gms/internal/drive/zzfb;->zzhk:Lcom/google/android/gms/internal/drive/zzmb;

    if-nez p1, :cond_33

    .line 8
    new-instance p1, Lcom/google/android/gms/internal/drive/zzkk$zzb;

    sget-object p3, Lcom/google/android/gms/internal/drive/zzfb;->zzhp:Lcom/google/android/gms/internal/drive/zzfb;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/drive/zzkk$zzb;-><init>(Lcom/google/android/gms/internal/drive/zzkk;)V

    .line 9
    sput-object p1, Lcom/google/android/gms/internal/drive/zzfb;->zzhk:Lcom/google/android/gms/internal/drive/zzmb;

    .line 10
    :cond_33
    monitor-exit p2

    goto :goto_38

    :catchall_35
    move-exception p1

    monitor-exit p2
    :try_end_37
    .catchall {:try_start_26 .. :try_end_37} :catchall_35

    throw p1

    :cond_38
    :goto_38
    return-object p1

    .line 11
    :pswitch_39
    sget-object p1, Lcom/google/android/gms/internal/drive/zzfb;->zzhp:Lcom/google/android/gms/internal/drive/zzfb;

    return-object p1

    :pswitch_3c
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzhd"

    aput-object p2, p1, p3

    const-string p2, "zzhe"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    const-string p3, "zzhm"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzhn"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzhg"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzho"

    aput-object p3, p1, p2

    const-string p2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0004\u0001\u0504\u0000\u0002\u0508\u0001\u0003\u0510\u0002\u0004\u0510\u0003\u0005\u0004\u0004"

    .line 12
    sget-object p3, Lcom/google/android/gms/internal/drive/zzfb;->zzhp:Lcom/google/android/gms/internal/drive/zzfb;

    invoke-static {p3, p2, p1}, Lcom/google/android/gms/internal/drive/zzkk;->j(Lcom/google/android/gms/internal/drive/zzlq;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_64
    new-instance p1, Lcom/google/android/gms/internal/drive/zzfb$zza;

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/drive/zzfb$zza;-><init>(Lcom/google/android/gms/internal/drive/zzfc;)V

    return-object p1

    .line 14
    :pswitch_6a
    new-instance p1, Lcom/google/android/gms/internal/drive/zzfb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/drive/zzfb;-><init>()V

    return-object p1

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_64
        :pswitch_3c
        :pswitch_39
        :pswitch_1f
        :pswitch_18
        :pswitch_11
    .end packed-switch
.end method

###### Class com.google.android.gms.internal.drive.zzfb.zza (com.google.android.gms.internal.drive.zzfb$zza)
.class public final Lcom/google/android/gms/internal/drive/zzfb$zza;
.super Lcom/google/android/gms/internal/drive/zzkk$zza;

# interfaces
.implements Lcom/google/android/gms/internal/drive/zzls;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/drive/zzfb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/drive/zzkk$zza<",
        "Lcom/google/android/gms/internal/drive/zzfb;",
        "Lcom/google/android/gms/internal/drive/zzfb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/drive/zzls;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzfb;->v()Lcom/google/android/gms/internal/drive/zzfb;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/drive/zzkk$zza;-><init>(Lcom/google/android/gms/internal/drive/zzkk;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/drive/zzfc;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzfb$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final o(Ljava/lang/String;)Lcom/google/android/gms/internal/drive/zzfb$zza;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->l()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->p:Lcom/google/android/gms/internal/drive/zzkk;

    check-cast v0, Lcom/google/android/gms/internal/drive/zzfb;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/drive/zzfb;->t(Lcom/google/android/gms/internal/drive/zzfb;Ljava/lang/String;)V

    return-object p0
.end method

.method public final p(J)Lcom/google/android/gms/internal/drive/zzfb$zza;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->l()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->p:Lcom/google/android/gms/internal/drive/zzkk;

    check-cast v0, Lcom/google/android/gms/internal/drive/zzfb;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/drive/zzfb;->s(Lcom/google/android/gms/internal/drive/zzfb;J)V

    return-object p0
.end method

.method public final q(J)Lcom/google/android/gms/internal/drive/zzfb$zza;
    .registers 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->l()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->p:Lcom/google/android/gms/internal/drive/zzkk;

    check-cast v0, Lcom/google/android/gms/internal/drive/zzfb;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/drive/zzfb;->x(Lcom/google/android/gms/internal/drive/zzfb;J)V

    return-object p0
.end method

.method public final r(I)Lcom/google/android/gms/internal/drive/zzfb$zza;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->l()V

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->p:Lcom/google/android/gms/internal/drive/zzkk;

    check-cast p1, Lcom/google/android/gms/internal/drive/zzfb;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/drive/zzfb;->r(Lcom/google/android/gms/internal/drive/zzfb;I)V

    return-object p0
.end method

.method public final s(I)Lcom/google/android/gms/internal/drive/zzfb$zza;
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzkk$zza;->l()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzkk$zza;->p:Lcom/google/android/gms/internal/drive/zzkk;

    check-cast v0, Lcom/google/android/gms/internal/drive/zzfb;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/drive/zzfb;->w(Lcom/google/android/gms/internal/drive/zzfb;I)V

    return-object p0
.end method
