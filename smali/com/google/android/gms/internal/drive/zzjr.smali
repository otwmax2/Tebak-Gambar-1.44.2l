###### Class com.google.android.gms.internal.drive.zzjr (com.google.android.gms.internal.drive.zzjr)
.class public abstract Lcom/google/android/gms/internal/drive/zzjr;
.super Lcom/google/android/gms/internal/drive/zzjb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/drive/zzjr$zza;,
        Lcom/google/android/gms/internal/drive/zzjr$zzb;
    }
.end annotation


# static fields
.field private static final b:Ljava/util/logging/Logger;

.field private static final c:Z


# instance fields
.field a:Lcom/google/android/gms/internal/drive/zzjt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    const-class v0, Lcom/google/android/gms/internal/drive/zzjr;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/drive/zzjr;->b:Ljava/util/logging/Logger;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/drive/zznd;->r()Z

    move-result v0

    sput-boolean v0, Lcom/google/android/gms/internal/drive/zzjr;->c:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzjb;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/drive/zzjs;)V
    .registers 2

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/drive/zzjr;-><init>()V

    return-void
.end method

.method public static A(F)I
    .registers 1

    const/4 p0, 0x4

    return p0
.end method

.method public static A0(J)I
    .registers 2

    const/16 p0, 0x8

    return p0
.end method

.method public static B(ID)I
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->q(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static B0(J)I
    .registers 2

    const/16 p0, 0x8

    return p0
.end method

.method public static C(IF)I
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->q(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method private static C0(J)J
    .registers 5

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static D(ILcom/google/android/gms/internal/drive/zzkx;)I
    .registers 4

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/drive/zzjr;->q(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    .line 2
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/drive/zzjr;->m0(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    .line 3
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/drive/zzjr;->b(ILcom/google/android/gms/internal/drive/zzkx;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static E(ILcom/google/android/gms/internal/drive/zzlq;)I
    .registers 4

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/drive/zzjr;->q(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    .line 2
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/drive/zzjr;->m0(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->q(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/drive/zzjr;->R(Lcom/google/android/gms/internal/drive/zzlq;)I

    move-result p1

    add-int/2addr p0, p1

    add-int/2addr v0, p0

    return v0
.end method

.method static F(ILcom/google/android/gms/internal/drive/zzlq;Lcom/google/android/gms/internal/drive/zzmf;)I
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->q(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/drive/zzjr;->d(Lcom/google/android/gms/internal/drive/zzlq;Lcom/google/android/gms/internal/drive/zzmf;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static G(ILjava/lang/String;)I
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->q(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/drive/zzjr;->u0(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static H(Lcom/google/android/gms/internal/drive/zzjc;)I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzjc;->size()I

    move-result p0

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->s(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static I([B)Lcom/google/android/gms/internal/drive/zzjr;
    .registers 4

    .line 1
    array-length v0, p0

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/drive/zzjr$zza;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/google/android/gms/internal/drive/zzjr$zza;-><init>([BII)V

    return-object v1
.end method

.method public static O(ILcom/google/android/gms/internal/drive/zzjc;)I
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->q(I)I

    move-result p0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzjc;->size()I

    move-result p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/drive/zzjr;->s(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method static P(ILcom/google/android/gms/internal/drive/zzlq;Lcom/google/android/gms/internal/drive/zzmf;)I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->q(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/drive/zzit;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzit;->e()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 4
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/drive/zzmf;->e(Ljava/lang/Object;)I

    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/drive/zzit;->h(I)V

    :cond_16
    add-int/2addr p0, v0

    return p0
.end method

.method public static Q(IZ)I
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->q(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static R(Lcom/google/android/gms/internal/drive/zzlq;)I
    .registers 2

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/drive/zzlq;->f()I

    move-result p0

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->s(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static S([B)I
    .registers 2

    .line 1
    array-length p0, p0

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->s(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method static synthetic Z()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/google/android/gms/internal/drive/zzjr;->c:Z

    return v0
.end method

.method public static a0(IJ)I
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->q(I)I

    move-result p0

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/drive/zzjr;->y0(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static b(ILcom/google/android/gms/internal/drive/zzkx;)I
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->q(I)I

    move-result p0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzkx;->b()I

    move-result p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/drive/zzjr;->s(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr p0, v0

    return p0
.end method

.method public static b0(ILcom/google/android/gms/internal/drive/zzjc;)I
    .registers 4

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/drive/zzjr;->q(I)I

    move-result v1

    shl-int/lit8 v0, v1, 0x1

    const/4 v1, 0x2

    .line 2
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/drive/zzjr;->m0(II)I

    move-result p0

    add-int/2addr v0, p0

    const/4 p0, 0x3

    .line 3
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/drive/zzjr;->O(ILcom/google/android/gms/internal/drive/zzjc;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static c(Lcom/google/android/gms/internal/drive/zzkx;)I
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzkx;->b()I

    move-result p0

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->s(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static c0(Lcom/google/android/gms/internal/drive/zzlq;)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/drive/zzlq;->f()I

    move-result p0

    return p0
.end method

.method static d(Lcom/google/android/gms/internal/drive/zzlq;Lcom/google/android/gms/internal/drive/zzmf;)I
    .registers 4

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/drive/zzit;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzit;->e()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    .line 3
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/drive/zzmf;->e(Ljava/lang/Object;)I

    move-result v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzit;->h(I)V

    .line 5
    :cond_10
    invoke-static {v0}, Lcom/google/android/gms/internal/drive/zzjr;->s(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public static d0(Z)I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public static g0(IJ)I
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->q(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/drive/zzjr;->y0(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static i0(IJ)I
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->q(I)I

    move-result p0

    .line 2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/drive/zzjr;->C0(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/drive/zzjr;->y0(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static k0(II)I
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->q(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/drive/zzjr;->r(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static l0(IJ)I
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->q(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static m0(II)I
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->q(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/drive/zzjr;->s(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static n0(IJ)I
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->q(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static o0(II)I
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->q(I)I

    move-result p0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/drive/zzjr;->x(I)I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/drive/zzjr;->s(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static p0(II)I
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->q(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static q(I)I
    .registers 1

    shl-int/lit8 p0, p0, 0x3

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->s(I)I

    move-result p0

    return p0
.end method

.method public static q0(II)I
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->q(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x4

    return p0
.end method

.method public static r(I)I
    .registers 1

    if-ltz p0, :cond_7

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->s(I)I

    move-result p0

    return p0

    :cond_7
    const/16 p0, 0xa

    return p0
.end method

.method public static r0(II)I
    .registers 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->q(I)I

    move-result p0

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/drive/zzjr;->r(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static s(I)I
    .registers 2

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_c

    const/4 p0, 0x2

    return p0

    :cond_c
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_13

    const/4 p0, 0x3

    return p0

    :cond_13
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_1a

    const/4 p0, 0x4

    return p0

    :cond_1a
    const/4 p0, 0x5

    return p0
.end method

.method public static t(I)I
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->x(I)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->s(I)I

    move-result p0

    return p0
.end method

.method public static u(I)I
    .registers 1

    const/4 p0, 0x4

    return p0
.end method

.method public static u0(Ljava/lang/String;)I
    .registers 2

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zznf;->a(Ljava/lang/CharSequence;)I

    move-result p0
    :try_end_4
    .catch Lcom/google/android/gms/internal/drive/zznj; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_c

    .line 2
    :catch_5
    sget-object v0, Lcom/google/android/gms/internal/drive/zzkm;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 3
    array-length p0, p0

    .line 4
    :goto_c
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->s(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static v(I)I
    .registers 1

    const/4 p0, 0x4

    return p0
.end method

.method public static w(I)I
    .registers 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->r(I)I

    move-result p0

    return p0
.end method

.method private static x(I)I
    .registers 2

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method public static x0(J)I
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/drive/zzjr;->y0(J)I

    move-result p0

    return p0
.end method

.method public static y(I)I
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/drive/zzjr;->s(I)I

    move-result p0

    return p0
.end method

.method public static y0(J)I
    .registers 8

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    cmp-long v0, p0, v2

    if-gez v0, :cond_12

    const/16 p0, 0xa

    return p0

    :cond_12
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_21

    const/4 v0, 0x6

    const/16 v1, 0x1c

    ushr-long/2addr p0, v1

    goto :goto_22

    :cond_21
    const/4 v0, 0x2

    :goto_22
    const-wide/32 v4, -0x200000

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2f

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    :cond_2f
    const-wide/16 v4, -0x4000

    and-long/2addr p0, v4

    cmp-long v1, p0, v2

    if-eqz v1, :cond_38

    add-int/lit8 v0, v0, 0x1

    :cond_38
    return v0
.end method

.method public static z(D)I
    .registers 2

    const/16 p0, 0x8

    return p0
.end method

.method public static z0(J)I
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/drive/zzjr;->C0(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/drive/zzjr;->y0(J)I

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract D0(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract E0(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final F0(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/drive/zzjr;->x(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzjr;->E0(I)V

    return-void
.end method

.method public abstract J(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final K(IJ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/drive/zzjr;->C0(J)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/drive/zzjr;->i(IJ)V

    return-void
.end method

.method public abstract L(ILcom/google/android/gms/internal/drive/zzjc;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract M(IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract N(Lcom/google/android/gms/internal/drive/zzlq;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract T(B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract U(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract V(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final W(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzjr;->T(B)V

    return-void
.end method

.method public abstract X()I
.end method

.method public final Y()V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzjr;->X()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(D)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zzjr;->w0(J)V

    return-void
.end method

.method public abstract e0(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final f(F)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzjr;->p(I)V

    return-void
.end method

.method abstract f0([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final g(ID)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/drive/zzjr;->V(IJ)V

    return-void
.end method

.method public final h(IF)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zzjr;->j0(II)V

    return-void
.end method

.method public final h0(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/internal/drive/zzjr;->x(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zzjr;->e0(II)V

    return-void
.end method

.method public abstract i(IJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract j(ILcom/google/android/gms/internal/drive/zzjc;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract j0(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract k(ILcom/google/android/gms/internal/drive/zzlq;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract l(ILcom/google/android/gms/internal/drive/zzlq;Lcom/google/android/gms/internal/drive/zzmf;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract m(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract n(Lcom/google/android/gms/internal/drive/zzjc;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final o(Ljava/lang/String;Lcom/google/android/gms/internal/drive/zznj;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/drive/zzjr;->b:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "com.google.protobuf.CodedOutputStream"

    const-string v3, "inefficientWriteStringNoTag"

    const-string v4, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/drive/zzkm;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 3
    :try_start_14
    array-length p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/drive/zzjr;->E0(I)V

    const/4 p2, 0x0

    .line 4
    array-length v0, p1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/drive/zzjb;->a([BII)V
    :try_end_1d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_14 .. :try_end_1d} :catch_20
    .catch Lcom/google/android/gms/internal/drive/zzjr$zzb; {:try_start_14 .. :try_end_1d} :catch_1e

    return-void

    :catch_1e
    move-exception p1

    .line 5
    throw p1

    :catch_20
    move-exception p1

    .line 6
    new-instance p2, Lcom/google/android/gms/internal/drive/zzjr$zzb;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/drive/zzjr$zzb;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public abstract p(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract s0(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract t0(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final v0(J)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/drive/zzjr;->C0(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/drive/zzjr;->s0(J)V

    return-void
.end method

.method public abstract w0(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

###### Class com.google.android.gms.internal.drive.zzjr.zza (com.google.android.gms.internal.drive.zzjr$zza)
.class final Lcom/google/android/gms/internal/drive/zzjr$zza;
.super Lcom/google/android/gms/internal/drive/zzjr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/drive/zzjr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# instance fields
.field private final d:[B

.field private final e:I

.field private final f:I

.field private g:I


# direct methods
.method constructor <init>([BII)V
    .registers 6

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/drive/zzjr;-><init>(Lcom/google/android/gms/internal/drive/zzjs;)V

    const-string p2, "buffer"

    .line 2
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    or-int/lit8 p2, p3, 0x0

    .line 3
    array-length v0, p1

    add-int/lit8 v1, p3, 0x0

    sub-int/2addr v0, v1

    or-int/2addr p2, v0

    const/4 v0, 0x0

    if-ltz p2, :cond_1c

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->d:[B

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->e:I

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    .line 7
    iput v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    return-void

    .line 8
    :cond_1c
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    array-length p1, p1

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    const/4 p1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, p1

    const-string p1, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    .line 10
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final G0([BII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->d:[B

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2
    iget p1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I
    :try_end_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p1

    .line 3
    new-instance p2, Lcom/google/android/gms/internal/drive/zzjr$zzb;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v1

    const-string p3, "Pos: %d, limit: %d, len: %d"

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/google/android/gms/internal/drive/zzjr$zzb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public final D0(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_6

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzjr;->E0(I)V

    return-void

    :cond_6
    int-to-long v0, p1

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/drive/zzjr;->s0(J)V

    return-void
.end method

.method public final E0(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzjr;->Z()Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzix;->a()Z

    move-result v0

    if-nez v0, :cond_ad

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzjr;->X()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_ad

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_25

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->d:[B

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/drive/zznd;->i([BJB)V

    return-void

    .line 5
    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->d:[B

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->i([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_48

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->d:[B

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/drive/zznd;->i([BJB)V

    return-void

    .line 7
    :cond_48
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->d:[B

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->i([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_6b

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->d:[B

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/drive/zznd;->i([BJB)V

    return-void

    .line 9
    :cond_6b
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->d:[B

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->i([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_8e

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->d:[B

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/drive/zznd;->i([BJB)V

    return-void

    .line 11
    :cond_8e
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->d:[B

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/drive/zznd;->i([BJB)V

    ushr-int/lit8 p1, p1, 0x7

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->d:[B

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    int-to-long v1, v1

    int-to-byte p1, p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/drive/zznd;->i([BJB)V

    return-void

    :cond_ad
    :goto_ad
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_bd

    .line 13
    :try_start_b1
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->d:[B

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void

    .line 14
    :cond_bd
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->d:[B

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_cc
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b1 .. :try_end_cc} :catch_cf

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_ad

    :catch_cf
    move-exception p1

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/drive/zzjr$zzb;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    .line 16
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/drive/zzjr$zzb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f9

    :goto_f8
    throw v0

    :goto_f9
    goto :goto_f8
.end method

.method public final J(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzjr;->E0(I)V

    return-void
.end method

.method public final L(ILcom/google/android/gms/internal/drive/zzjc;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/drive/zzjr;->J(II)V

    const/4 v2, 0x2

    .line 2
    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/drive/zzjr;->e0(II)V

    .line 3
    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/internal/drive/zzjr;->j(ILcom/google/android/gms/internal/drive/zzjc;)V

    const/4 p1, 0x4

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/drive/zzjr;->J(II)V

    return-void
.end method

.method public final M(IZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzjr;->J(II)V

    int-to-byte p1, p2

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/drive/zzjr;->T(B)V

    return-void
.end method

.method public final N(Lcom/google/android/gms/internal/drive/zzlq;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/drive/zzlq;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzjr;->E0(I)V

    .line 2
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/drive/zzlq;->d(Lcom/google/android/gms/internal/drive/zzjr;)V

    return-void
.end method

.method public final T(B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->d:[B

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    aput-byte p1, v0, v1
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p1

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/drive/zzjr$zzb;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    .line 3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/drive/zzjr$zzb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final U(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzjr;->J(II)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/drive/zzjr;->D0(I)V

    return-void
.end method

.method public final V(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzjr;->J(II)V

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/drive/zzjr;->w0(J)V

    return-void
.end method

.method public final X()I
    .registers 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final a([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/drive/zzjr$zza;->G0([BII)V

    return-void
.end method

.method public final e0(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzjr;->J(II)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/drive/zzjr;->E0(I)V

    return-void
.end method

.method public final f0([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/drive/zzjr;->E0(I)V

    const/4 p2, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/drive/zzjr$zza;->G0([BII)V

    return-void
.end method

.method public final i(IJ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzjr;->J(II)V

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/drive/zzjr;->s0(J)V

    return-void
.end method

.method public final j(ILcom/google/android/gms/internal/drive/zzjc;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzjr;->J(II)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/drive/zzjr;->n(Lcom/google/android/gms/internal/drive/zzjc;)V

    return-void
.end method

.method public final j0(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzjr;->J(II)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/drive/zzjr;->p(I)V

    return-void
.end method

.method public final k(ILcom/google/android/gms/internal/drive/zzlq;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/drive/zzjr;->J(II)V

    const/4 v2, 0x2

    .line 2
    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/drive/zzjr;->e0(II)V

    .line 3
    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/drive/zzjr;->J(II)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/drive/zzjr;->N(Lcom/google/android/gms/internal/drive/zzlq;)V

    const/4 p1, 0x4

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/drive/zzjr;->J(II)V

    return-void
.end method

.method final l(ILcom/google/android/gms/internal/drive/zzlq;Lcom/google/android/gms/internal/drive/zzmf;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzjr;->J(II)V

    .line 2
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/internal/drive/zzit;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzit;->e()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_15

    .line 4
    invoke-interface {p3, p1}, Lcom/google/android/gms/internal/drive/zzmf;->e(Ljava/lang/Object;)I

    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/drive/zzit;->h(I)V

    .line 6
    :cond_15
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzjr;->E0(I)V

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/drive/zzjr;->a:Lcom/google/android/gms/internal/drive/zzjt;

    invoke-interface {p3, p2, p1}, Lcom/google/android/gms/internal/drive/zzmf;->f(Ljava/lang/Object;Lcom/google/android/gms/internal/drive/zzns;)V

    return-void
.end method

.method public final m(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/drive/zzjr;->J(II)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/drive/zzjr;->t0(Ljava/lang/String;)V

    return-void
.end method

.method public final n(Lcom/google/android/gms/internal/drive/zzjc;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/drive/zzjc;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/drive/zzjr;->E0(I)V

    .line 2
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/drive/zzjc;->k(Lcom/google/android/gms/internal/drive/zzjb;)V

    return-void
.end method

.method public final p(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->d:[B

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    int-to-byte v3, p1

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 2
    iput v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    .line 3
    iput v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 4
    iput v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    ushr-int/lit8 p1, p1, 0x18

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_26
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_26} :catch_27

    return-void

    :catch_27
    move-exception p1

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/drive/zzjr$zzb;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/drive/zzjr$zzb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final s0(J)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/drive/zzjr;->Z()Z

    move-result v0

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzjr;->X()I

    move-result v0

    const/16 v6, 0xa

    if-lt v0, v6, :cond_3c

    :goto_13
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_28

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->d:[B

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    int-to-long v1, v1

    long-to-int p2, p1

    int-to-byte p1, p2

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/gms/internal/drive/zznd;->i([BJB)V

    return-void

    .line 3
    :cond_28
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->d:[B

    iget v6, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    int-to-long v6, v6

    long-to-int v8, p1

    and-int/lit8 v8, v8, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    invoke-static {v0, v6, v7, v8}, Lcom/google/android/gms/internal/drive/zznd;->i([BJB)V

    ushr-long/2addr p1, v1

    goto :goto_13

    :cond_3c
    :goto_3c
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_4f

    .line 4
    :try_start_42
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->d:[B

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v0, v1

    return-void

    .line 5
    :cond_4f
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->d:[B

    iget v6, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    long-to-int v7, p1

    and-int/lit8 v7, v7, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v6
    :try_end_5f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_42 .. :try_end_5f} :catch_61

    ushr-long/2addr p1, v1

    goto :goto_3c

    :catch_61
    move-exception p1

    .line 6
    new-instance p2, Lcom/google/android/gms/internal/drive/zzjr$zzb;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    .line 7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/drive/zzjr$zzb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8b

    :goto_8a
    throw p2

    :goto_8b
    goto :goto_8a
.end method

.method public final t0(Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    .line 2
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/drive/zzjr;->s(I)I

    move-result v1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/drive/zzjr;->s(I)I

    move-result v2

    if-ne v2, v1, :cond_2f

    add-int v1, v0, v2

    .line 5
    iput v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    .line 6
    iget-object v3, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->d:[B

    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzjr;->X()I

    move-result v4

    invoke-static {p1, v3, v1, v4}, Lcom/google/android/gms/internal/drive/zznf;->b(Ljava/lang/CharSequence;[BII)I

    move-result v1

    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    sub-int v3, v1, v0

    sub-int/2addr v3, v2

    .line 8
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/drive/zzjr;->E0(I)V

    .line 9
    iput v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    return-void

    .line 10
    :cond_2f
    invoke-static {p1}, Lcom/google/android/gms/internal/drive/zznf;->a(Ljava/lang/CharSequence;)I

    move-result v1

    .line 11
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/drive/zzjr;->E0(I)V

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->d:[B

    iget v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/drive/zzjr;->X()I

    move-result v3

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/drive/zznf;->b(Ljava/lang/CharSequence;[BII)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I
    :try_end_44
    .catch Lcom/google/android/gms/internal/drive/zznj; {:try_start_2 .. :try_end_44} :catch_4c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_44} :catch_45

    return-void

    :catch_45
    move-exception p1

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/drive/zzjr$zzb;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/drive/zzjr$zzb;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_4c
    move-exception v1

    .line 14
    iput v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    .line 15
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/drive/zzjr;->o(Ljava/lang/String;Lcom/google/android/gms/internal/drive/zznj;)V

    return-void
.end method

.method public final w0(J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->d:[B

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    long-to-int v3, p1

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 2
    iput v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    const/16 v3, 0x8

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    .line 3
    iput v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    const/16 v3, 0x10

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 4
    iput v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    const/16 v3, 0x18

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    .line 5
    iput v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    const/16 v3, 0x20

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 6
    iput v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    const/16 v3, 0x28

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    .line 7
    iput v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    const/16 v3, 0x30

    shr-long v3, p1, v3

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    .line 8
    iput v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    const/16 v1, 0x38

    shr-long/2addr p1, v1

    long-to-int p2, p1

    int-to-byte p1, p2

    aput-byte p1, v0, v2
    :try_end_5f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_5f} :catch_60

    return-void

    :catch_60
    move-exception p1

    .line 9
    new-instance p2, Lcom/google/android/gms/internal/drive/zzjr$zzb;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->g:I

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/drive/zzjr$zza;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/drive/zzjr$zzb;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

###### Class com.google.android.gms.internal.drive.zzjr.zzb (com.google.android.gms.internal.drive.zzjr$zzb)
.class public final Lcom/google/android/gms/internal/drive/zzjr$zzb;
.super Ljava/io/IOException;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/drive/zzjr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzb"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    const-string v0, "CodedOutputStream was writing to a flat byte array and ran out of space."

    .line 1
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    const-string v0, "CodedOutputStream was writing to a flat byte array and ran out of space.: "

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_16

    :cond_11
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_16
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Throwable;)V
    .registers 3

    const-string v0, "CodedOutputStream was writing to a flat byte array and ran out of space."

    .line 2
    invoke-direct {p0, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
