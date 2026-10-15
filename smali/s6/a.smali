###### Class s6.a (s6.a)
.class public final Ls6/a;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls6/a$b;,
        Ls6/a$d;,
        Ls6/a$c;,
        Ls6/a$a;
    }
.end annotation


# static fields
.field private static final p:Ls6/a;


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ls6/a$c;

.field private final e:Ls6/a$d;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:I

.field private final i:I

.field private final j:Ljava/lang/String;

.field private final k:J

.field private final l:Ls6/a$b;

.field private final m:Ljava/lang/String;

.field private final n:J

.field private final o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ls6/a$a;

    .line 1
    invoke-direct {v0}, Ls6/a$a;-><init>()V

    invoke-virtual {v0}, Ls6/a$a;->a()Ls6/a;

    move-result-object v0

    sput-object v0, Ls6/a;->p:Ls6/a;

    return-void
.end method

.method constructor <init>(JLjava/lang/String;Ljava/lang/String;Ls6/a$c;Ls6/a$d;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;JLs6/a$b;Ljava/lang/String;JLjava/lang/String;)V
    .registers 22

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    iput-wide v1, v0, Ls6/a;->a:J

    move-object v1, p3

    iput-object v1, v0, Ls6/a;->b:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Ls6/a;->c:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Ls6/a;->d:Ls6/a$c;

    move-object v1, p6

    iput-object v1, v0, Ls6/a;->e:Ls6/a$d;

    move-object v1, p7

    iput-object v1, v0, Ls6/a;->f:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Ls6/a;->g:Ljava/lang/String;

    move v1, p9

    iput v1, v0, Ls6/a;->h:I

    move v1, p10

    iput v1, v0, Ls6/a;->i:I

    move-object v1, p11

    iput-object v1, v0, Ls6/a;->j:Ljava/lang/String;

    move-wide v1, p12

    iput-wide v1, v0, Ls6/a;->k:J

    move-object/from16 v1, p14

    iput-object v1, v0, Ls6/a;->l:Ls6/a$b;

    move-object/from16 v1, p15

    iput-object v1, v0, Ls6/a;->m:Ljava/lang/String;

    move-wide/from16 v1, p16

    iput-wide v1, v0, Ls6/a;->n:J

    move-object/from16 v1, p18

    iput-object v1, v0, Ls6/a;->o:Ljava/lang/String;

    return-void
.end method

.method public static p()Ls6/a$a;
    .registers 1

    new-instance v0, Ls6/a$a;

    .line 1
    invoke-direct {v0}, Ls6/a$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2
    .annotation build Lcom/google/android/gms/internal/firebase_messaging/zzz;
        zza = 0xd
    .end annotation

    iget-object v0, p0, Ls6/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method public b()J
    .registers 3
    .annotation build Lcom/google/android/gms/internal/firebase_messaging/zzz;
        zza = 0xb
    .end annotation

    iget-wide v0, p0, Ls6/a;->k:J

    return-wide v0
.end method

.method public c()J
    .registers 3
    .annotation build Lcom/google/android/gms/internal/firebase_messaging/zzz;
        zza = 0xe
    .end annotation

    iget-wide v0, p0, Ls6/a;->n:J

    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .registers 2
    .annotation build Lcom/google/android/gms/internal/firebase_messaging/zzz;
        zza = 0x7
    .end annotation

    iget-object v0, p0, Ls6/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2
    .annotation build Lcom/google/android/gms/internal/firebase_messaging/zzz;
        zza = 0xf
    .end annotation

    iget-object v0, p0, Ls6/a;->o:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ls6/a$b;
    .registers 2
    .annotation build Lcom/google/android/gms/internal/firebase_messaging/zzz;
        zza = 0xc
    .end annotation

    iget-object v0, p0, Ls6/a;->l:Ls6/a$b;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2
    .annotation build Lcom/google/android/gms/internal/firebase_messaging/zzz;
        zza = 0x3
    .end annotation

    iget-object v0, p0, Ls6/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2
    .annotation build Lcom/google/android/gms/internal/firebase_messaging/zzz;
        zza = 0x2
    .end annotation

    iget-object v0, p0, Ls6/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ls6/a$c;
    .registers 2
    .annotation build Lcom/google/android/gms/internal/firebase_messaging/zzz;
        zza = 0x4
    .end annotation

    iget-object v0, p0, Ls6/a;->d:Ls6/a$c;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2
    .annotation build Lcom/google/android/gms/internal/firebase_messaging/zzz;
        zza = 0x6
    .end annotation

    iget-object v0, p0, Ls6/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public k()I
    .registers 2
    .annotation build Lcom/google/android/gms/internal/firebase_messaging/zzz;
        zza = 0x8
    .end annotation

    iget v0, p0, Ls6/a;->h:I

    return v0
.end method

.method public l()J
    .registers 3
    .annotation build Lcom/google/android/gms/internal/firebase_messaging/zzz;
        zza = 0x1
    .end annotation

    iget-wide v0, p0, Ls6/a;->a:J

    return-wide v0
.end method

.method public m()Ls6/a$d;
    .registers 2
    .annotation build Lcom/google/android/gms/internal/firebase_messaging/zzz;
        zza = 0x5
    .end annotation

    iget-object v0, p0, Ls6/a;->e:Ls6/a$d;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .registers 2
    .annotation build Lcom/google/android/gms/internal/firebase_messaging/zzz;
        zza = 0xa
    .end annotation

    iget-object v0, p0, Ls6/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public o()I
    .registers 2
    .annotation build Lcom/google/android/gms/internal/firebase_messaging/zzz;
        zza = 0x9
    .end annotation

    iget v0, p0, Ls6/a;->i:I

    return v0
.end method

###### Class s6.a.C0248a (s6.a$a)
.class public final Ls6/a$a;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls6/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ls6/a$c;

.field private e:Ls6/a$d;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:J

.field private l:Ls6/a$b;

.field private m:Ljava/lang/String;

.field private n:J

.field private o:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ls6/a$a;->a:J

    const-string v2, ""

    iput-object v2, p0, Ls6/a$a;->b:Ljava/lang/String;

    iput-object v2, p0, Ls6/a$a;->c:Ljava/lang/String;

    .line 1
    sget-object v3, Ls6/a$c;->p:Ls6/a$c;

    iput-object v3, p0, Ls6/a$a;->d:Ls6/a$c;

    .line 2
    sget-object v3, Ls6/a$d;->p:Ls6/a$d;

    iput-object v3, p0, Ls6/a$a;->e:Ls6/a$d;

    iput-object v2, p0, Ls6/a$a;->f:Ljava/lang/String;

    iput-object v2, p0, Ls6/a$a;->g:Ljava/lang/String;

    const/4 v3, 0x0

    iput v3, p0, Ls6/a$a;->h:I

    iput v3, p0, Ls6/a$a;->i:I

    iput-object v2, p0, Ls6/a$a;->j:Ljava/lang/String;

    iput-wide v0, p0, Ls6/a$a;->k:J

    .line 3
    sget-object v3, Ls6/a$b;->p:Ls6/a$b;

    iput-object v3, p0, Ls6/a$a;->l:Ls6/a$b;

    iput-object v2, p0, Ls6/a$a;->m:Ljava/lang/String;

    iput-wide v0, p0, Ls6/a$a;->n:J

    iput-object v2, p0, Ls6/a$a;->o:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ls6/a;
    .registers 25

    move-object/from16 v0, p0

    .line 1
    new-instance v20, Ls6/a;

    move-object/from16 v1, v20

    iget-wide v2, v0, Ls6/a$a;->a:J

    iget-object v4, v0, Ls6/a$a;->b:Ljava/lang/String;

    iget-object v5, v0, Ls6/a$a;->c:Ljava/lang/String;

    iget-object v6, v0, Ls6/a$a;->d:Ls6/a$c;

    iget-object v7, v0, Ls6/a$a;->e:Ls6/a$d;

    iget-object v8, v0, Ls6/a$a;->f:Ljava/lang/String;

    iget-object v9, v0, Ls6/a$a;->g:Ljava/lang/String;

    iget v10, v0, Ls6/a$a;->h:I

    iget v11, v0, Ls6/a$a;->i:I

    iget-object v12, v0, Ls6/a$a;->j:Ljava/lang/String;

    iget-wide v13, v0, Ls6/a$a;->k:J

    iget-object v15, v0, Ls6/a$a;->l:Ls6/a$b;

    move-object/from16 v21, v1

    iget-object v1, v0, Ls6/a$a;->m:Ljava/lang/String;

    move-object/from16 v16, v1

    move-wide/from16 v22, v2

    iget-wide v1, v0, Ls6/a$a;->n:J

    move-wide/from16 v17, v1

    iget-object v1, v0, Ls6/a$a;->o:Ljava/lang/String;

    move-object/from16 v19, v1

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-direct/range {v1 .. v19}, Ls6/a;-><init>(JLjava/lang/String;Ljava/lang/String;Ls6/a$c;Ls6/a$d;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;JLs6/a$b;Ljava/lang/String;JLjava/lang/String;)V

    return-object v20
.end method

.method public b(Ljava/lang/String;)Ls6/a$a;
    .registers 2

    iput-object p1, p0, Ls6/a$a;->m:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Ls6/a$a;
    .registers 2

    iput-object p1, p0, Ls6/a$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Ls6/a$a;
    .registers 2

    iput-object p1, p0, Ls6/a$a;->o:Ljava/lang/String;

    return-object p0
.end method

.method public e(Ls6/a$b;)Ls6/a$a;
    .registers 2

    iput-object p1, p0, Ls6/a$a;->l:Ls6/a$b;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Ls6/a$a;
    .registers 2

    iput-object p1, p0, Ls6/a$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Ls6/a$a;
    .registers 2

    iput-object p1, p0, Ls6/a$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public h(Ls6/a$c;)Ls6/a$a;
    .registers 2

    iput-object p1, p0, Ls6/a$a;->d:Ls6/a$c;

    return-object p0
.end method

.method public i(Ljava/lang/String;)Ls6/a$a;
    .registers 2

    iput-object p1, p0, Ls6/a$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public j(J)Ls6/a$a;
    .registers 3

    iput-wide p1, p0, Ls6/a$a;->a:J

    return-object p0
.end method

.method public k(Ls6/a$d;)Ls6/a$a;
    .registers 2

    iput-object p1, p0, Ls6/a$a;->e:Ls6/a$d;

    return-object p0
.end method

.method public l(Ljava/lang/String;)Ls6/a$a;
    .registers 2

    iput-object p1, p0, Ls6/a$a;->j:Ljava/lang/String;

    return-object p0
.end method

.method public m(I)Ls6/a$a;
    .registers 2

    iput p1, p0, Ls6/a$a;->i:I

    return-object p0
.end method

###### Class s6.a.b (s6.a$b)
.class public final enum Ls6/a$b;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-messaging@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_messaging/zzx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls6/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ls6/a$b;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_messaging/zzx;"
    }
.end annotation


# static fields
.field public static final enum p:Ls6/a$b;

.field public static final enum q:Ls6/a$b;

.field public static final enum r:Ls6/a$b;

.field private static final synthetic s:[Ls6/a$b;


# instance fields
.field private final o:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ls6/a$b;

    const-string v1, "UNKNOWN_EVENT"

    const/4 v2, 0x0

    .line 1
    invoke-direct {v0, v1, v2, v2}, Ls6/a$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ls6/a$b;->p:Ls6/a$b;

    new-instance v0, Ls6/a$b;

    const-string v1, "MESSAGE_DELIVERED"

    const/4 v2, 0x1

    .line 2
    invoke-direct {v0, v1, v2, v2}, Ls6/a$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ls6/a$b;->q:Ls6/a$b;

    new-instance v0, Ls6/a$b;

    const-string v1, "MESSAGE_OPEN"

    const/4 v2, 0x2

    .line 3
    invoke-direct {v0, v1, v2, v2}, Ls6/a$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ls6/a$b;->r:Ls6/a$b;

    .line 4
    invoke-static {}, Ls6/a$b;->c()[Ls6/a$b;

    move-result-object v0

    sput-object v0, Ls6/a$b;->s:[Ls6/a$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ls6/a$b;->o:I

    return-void
.end method

.method private static synthetic c()[Ls6/a$b;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Ls6/a$b;

    sget-object v1, Ls6/a$b;->p:Ls6/a$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ls6/a$b;->q:Ls6/a$b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ls6/a$b;->r:Ls6/a$b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ls6/a$b;
    .registers 2

    const-class v0, Ls6/a$b;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls6/a$b;

    return-object p0
.end method

.method public static values()[Ls6/a$b;
    .registers 1

    sget-object v0, Ls6/a$b;->s:[Ls6/a$b;

    .line 1
    invoke-virtual {v0}, [Ls6/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls6/a$b;

    return-object v0
.end method


# virtual methods
.method public h()I
    .registers 2

    iget v0, p0, Ls6/a$b;->o:I

    return v0
.end method

###### Class s6.a.c (s6.a$c)
.class public final enum Ls6/a$c;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-messaging@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_messaging/zzx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls6/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ls6/a$c;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_messaging/zzx;"
    }
.end annotation


# static fields
.field public static final enum p:Ls6/a$c;

.field public static final enum q:Ls6/a$c;

.field public static final enum r:Ls6/a$c;

.field public static final enum s:Ls6/a$c;

.field private static final synthetic t:[Ls6/a$c;


# instance fields
.field private final o:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ls6/a$c;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    .line 1
    invoke-direct {v0, v1, v2, v2}, Ls6/a$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ls6/a$c;->p:Ls6/a$c;

    new-instance v0, Ls6/a$c;

    const-string v1, "DATA_MESSAGE"

    const/4 v2, 0x1

    .line 2
    invoke-direct {v0, v1, v2, v2}, Ls6/a$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ls6/a$c;->q:Ls6/a$c;

    new-instance v0, Ls6/a$c;

    const-string v1, "TOPIC"

    const/4 v2, 0x2

    .line 3
    invoke-direct {v0, v1, v2, v2}, Ls6/a$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ls6/a$c;->r:Ls6/a$c;

    new-instance v0, Ls6/a$c;

    const-string v1, "DISPLAY_NOTIFICATION"

    const/4 v2, 0x3

    .line 4
    invoke-direct {v0, v1, v2, v2}, Ls6/a$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ls6/a$c;->s:Ls6/a$c;

    .line 5
    invoke-static {}, Ls6/a$c;->c()[Ls6/a$c;

    move-result-object v0

    sput-object v0, Ls6/a$c;->t:[Ls6/a$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ls6/a$c;->o:I

    return-void
.end method

.method private static synthetic c()[Ls6/a$c;
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Ls6/a$c;

    sget-object v1, Ls6/a$c;->p:Ls6/a$c;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ls6/a$c;->q:Ls6/a$c;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ls6/a$c;->r:Ls6/a$c;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Ls6/a$c;->s:Ls6/a$c;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ls6/a$c;
    .registers 2

    const-class v0, Ls6/a$c;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls6/a$c;

    return-object p0
.end method

.method public static values()[Ls6/a$c;
    .registers 1

    sget-object v0, Ls6/a$c;->t:[Ls6/a$c;

    .line 1
    invoke-virtual {v0}, [Ls6/a$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls6/a$c;

    return-object v0
.end method


# virtual methods
.method public h()I
    .registers 2

    iget v0, p0, Ls6/a$c;->o:I

    return v0
.end method

###### Class s6.a.d (s6.a$d)
.class public final enum Ls6/a$d;
.super Ljava/lang/Enum;
.source "com.google.firebase:firebase-messaging@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase_messaging/zzx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls6/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ls6/a$d;",
        ">;",
        "Lcom/google/android/gms/internal/firebase_messaging/zzx;"
    }
.end annotation


# static fields
.field public static final enum p:Ls6/a$d;

.field public static final enum q:Ls6/a$d;

.field public static final enum r:Ls6/a$d;

.field public static final enum s:Ls6/a$d;

.field private static final synthetic t:[Ls6/a$d;


# instance fields
.field private final o:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ls6/a$d;

    const-string v1, "UNKNOWN_OS"

    const/4 v2, 0x0

    .line 1
    invoke-direct {v0, v1, v2, v2}, Ls6/a$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ls6/a$d;->p:Ls6/a$d;

    new-instance v0, Ls6/a$d;

    const-string v1, "ANDROID"

    const/4 v2, 0x1

    .line 2
    invoke-direct {v0, v1, v2, v2}, Ls6/a$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ls6/a$d;->q:Ls6/a$d;

    new-instance v0, Ls6/a$d;

    const-string v1, "IOS"

    const/4 v2, 0x2

    .line 3
    invoke-direct {v0, v1, v2, v2}, Ls6/a$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ls6/a$d;->r:Ls6/a$d;

    new-instance v0, Ls6/a$d;

    const-string v1, "WEB"

    const/4 v2, 0x3

    .line 4
    invoke-direct {v0, v1, v2, v2}, Ls6/a$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ls6/a$d;->s:Ls6/a$d;

    .line 5
    invoke-static {}, Ls6/a$d;->c()[Ls6/a$d;

    move-result-object v0

    sput-object v0, Ls6/a$d;->t:[Ls6/a$d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ls6/a$d;->o:I

    return-void
.end method

.method private static synthetic c()[Ls6/a$d;
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Ls6/a$d;

    sget-object v1, Ls6/a$d;->p:Ls6/a$d;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ls6/a$d;->q:Ls6/a$d;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ls6/a$d;->r:Ls6/a$d;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Ls6/a$d;->s:Ls6/a$d;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Ls6/a$d;
    .registers 2

    const-class v0, Ls6/a$d;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ls6/a$d;

    return-object p0
.end method

.method public static values()[Ls6/a$d;
    .registers 1

    sget-object v0, Ls6/a$d;->t:[Ls6/a$d;

    .line 1
    invoke-virtual {v0}, [Ls6/a$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ls6/a$d;

    return-object v0
.end method


# virtual methods
.method public h()I
    .registers 2

    iget v0, p0, Ls6/a$d;->o:I

    return v0
.end method
