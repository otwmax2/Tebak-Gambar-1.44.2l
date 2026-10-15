###### Class o3.c (o3.c)
.class public final Lo3/c;
.super Ljava/lang/Object;
.source "LogEventDropped.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo3/c$b;,
        Lo3/c$a;
    }
.end annotation


# static fields
.field private static final c:Lo3/c;


# instance fields
.field private final a:J

.field private final b:Lo3/c$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lo3/c$a;

    invoke-direct {v0}, Lo3/c$a;-><init>()V

    invoke-virtual {v0}, Lo3/c$a;->a()Lo3/c;

    move-result-object v0

    sput-object v0, Lo3/c;->c:Lo3/c;

    return-void
.end method

.method constructor <init>(JLo3/c$b;)V
    .registers 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lo3/c;->a:J

    .line 3
    iput-object p3, p0, Lo3/c;->b:Lo3/c$b;

    return-void
.end method

.method public static c()Lo3/c$a;
    .registers 1

    .line 1
    new-instance v0, Lo3/c$a;

    invoke-direct {v0}, Lo3/c$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()J
    .registers 3
    .annotation build Lg6/d;
        tag = 0x1
    .end annotation

    .line 1
    iget-wide v0, p0, Lo3/c;->a:J

    return-wide v0
.end method

.method public b()Lo3/c$b;
    .registers 2
    .annotation build Lg6/d;
        tag = 0x3
    .end annotation

    .line 1
    iget-object v0, p0, Lo3/c;->b:Lo3/c$b;

    return-object v0
.end method

###### Class o3.c.a (o3.c$a)
.class public final Lo3/c$a;
.super Ljava/lang/Object;
.source "LogEventDropped.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:J

.field private b:Lo3/c$b;


# direct methods
.method constructor <init>()V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lo3/c$a;->a:J

    .line 3
    sget-object v0, Lo3/c$b;->p:Lo3/c$b;

    iput-object v0, p0, Lo3/c$a;->b:Lo3/c$b;

    return-void
.end method


# virtual methods
.method public a()Lo3/c;
    .registers 5

    .line 1
    new-instance v0, Lo3/c;

    iget-wide v1, p0, Lo3/c$a;->a:J

    iget-object v3, p0, Lo3/c$a;->b:Lo3/c$b;

    invoke-direct {v0, v1, v2, v3}, Lo3/c;-><init>(JLo3/c$b;)V

    return-object v0
.end method

.method public b(J)Lo3/c$a;
    .registers 3

    .line 1
    iput-wide p1, p0, Lo3/c$a;->a:J

    return-object p0
.end method

.method public c(Lo3/c$b;)Lo3/c$a;
    .registers 2

    .line 1
    iput-object p1, p0, Lo3/c$a;->b:Lo3/c$b;

    return-object p0
.end method

###### Class o3.c.b (o3.c$b)
.class public final enum Lo3/c$b;
.super Ljava/lang/Enum;
.source "LogEventDropped.java"

# interfaces
.implements Lg6/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo3/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo3/c$b;",
        ">;",
        "Lg6/c;"
    }
.end annotation


# static fields
.field public static final enum p:Lo3/c$b;

.field public static final enum q:Lo3/c$b;

.field public static final enum r:Lo3/c$b;

.field public static final enum s:Lo3/c$b;

.field public static final enum t:Lo3/c$b;

.field public static final enum u:Lo3/c$b;

.field public static final enum v:Lo3/c$b;

.field private static final synthetic w:[Lo3/c$b;


# instance fields
.field private final o:I


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 1
    new-instance v0, Lo3/c$b;

    const-string v1, "REASON_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lo3/c$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo3/c$b;->p:Lo3/c$b;

    .line 2
    new-instance v1, Lo3/c$b;

    const-string v3, "MESSAGE_TOO_OLD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lo3/c$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lo3/c$b;->q:Lo3/c$b;

    .line 3
    new-instance v3, Lo3/c$b;

    const-string v5, "CACHE_FULL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lo3/c$b;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lo3/c$b;->r:Lo3/c$b;

    .line 4
    new-instance v5, Lo3/c$b;

    const-string v7, "PAYLOAD_TOO_BIG"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lo3/c$b;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lo3/c$b;->s:Lo3/c$b;

    .line 5
    new-instance v7, Lo3/c$b;

    const-string v9, "MAX_RETRIES_REACHED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lo3/c$b;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lo3/c$b;->t:Lo3/c$b;

    .line 6
    new-instance v9, Lo3/c$b;

    const-string v11, "INVALID_PAYLOD"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lo3/c$b;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lo3/c$b;->u:Lo3/c$b;

    .line 7
    new-instance v11, Lo3/c$b;

    const-string v13, "SERVER_ERROR"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lo3/c$b;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lo3/c$b;->v:Lo3/c$b;

    const/4 v13, 0x7

    new-array v13, v13, [Lo3/c$b;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    .line 8
    sput-object v13, Lo3/c$b;->w:[Lo3/c$b;

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

    .line 2
    iput p3, p0, Lo3/c$b;->o:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo3/c$b;
    .registers 2

    .line 1
    const-class v0, Lo3/c$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo3/c$b;

    return-object p0
.end method

.method public static values()[Lo3/c$b;
    .registers 1

    .line 1
    sget-object v0, Lo3/c$b;->w:[Lo3/c$b;

    invoke-virtual {v0}, [Lo3/c$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo3/c$b;

    return-object v0
.end method


# virtual methods
.method public h()I
    .registers 2

    .line 1
    iget v0, p0, Lo3/c$b;->o:I

    return v0
.end method
