###### Class x6.h (x6.h)
.class public final Lx6/h;
.super Ljava/lang/Object;
.source "EventGDTLogger.kt"

# interfaces
.implements Lx6/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx6/h$a;
    }
.end annotation


# static fields
.field public static final b:Lx6/h$a;


# instance fields
.field private final a:Lk6/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk6/b<",
            "Lj3/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lx6/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lx6/h$a;-><init>(Lt9/g;)V

    sput-object v0, Lx6/h;->b:Lx6/h$a;

    return-void
.end method

.method public constructor <init>(Lk6/b;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk6/b<",
            "Lj3/g;",
            ">;)V"
        }
    .end annotation

    const-string v0, "transportFactoryProvider"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx6/h;->a:Lk6/b;

    return-void
.end method

.method public static synthetic b(Lx6/h;Lx6/a0;)[B
    .registers 2

    invoke-direct {p0, p1}, Lx6/h;->c(Lx6/a0;)[B

    move-result-object p0

    return-object p0
.end method

.method private final c(Lx6/a0;)[B
    .registers 4

    .line 1
    sget-object v0, Lx6/b0;->a:Lx6/b0;

    invoke-virtual {v0}, Lx6/b0;->c()Ld6/a;

    move-result-object v0

    invoke-interface {v0, p1}, Ld6/a;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SessionEvents.SESSION_EVENT_ENCODER.encode(value)"

    invoke-static {p1, v0}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session Event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventGDTLogger"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-object v0, Lba/d;->b:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    const-string v0, "this as java.lang.String).getBytes(charset)"

    invoke-static {p1, v0}, Lt9/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public a(Lx6/a0;)V
    .registers 7

    const-string v0, "sessionEvent"

    invoke-static {p1, v0}, Lt9/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lx6/h;->a:Lk6/b;

    .line 2
    invoke-interface {v0}, Lk6/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj3/g;

    .line 3
    const-class v1, Lx6/a0;

    const-string v2, "json"

    .line 4
    invoke-static {v2}, Lj3/b;->b(Ljava/lang/String;)Lj3/b;

    move-result-object v2

    .line 5
    new-instance v3, Lx6/g;

    invoke-direct {v3, p0}, Lx6/g;-><init>(Lx6/h;)V

    const-string v4, "FIREBASE_APPQUALITY_SESSION"

    .line 6
    invoke-interface {v0, v4, v1, v2, v3}, Lj3/g;->a(Ljava/lang/String;Ljava/lang/Class;Lj3/b;Lj3/e;)Lj3/f;

    move-result-object v0

    .line 7
    invoke-static {p1}, Lj3/c;->d(Ljava/lang/Object;)Lj3/c;

    move-result-object p1

    invoke-interface {v0, p1}, Lj3/f;->b(Lj3/c;)V

    return-void
.end method

###### Class x6.h.a (x6.h$a)
.class public final Lx6/h$a;
.super Ljava/lang/Object;
.source "EventGDTLogger.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx6/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lt9/g;)V
    .registers 2

    invoke-direct {p0}, Lx6/h$a;-><init>()V

    return-void
.end method

###### Class x6.g (x6.g)
.class public final synthetic Lx6/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lj3/e;


# instance fields
.field public final synthetic a:Lx6/h;


# direct methods
.method public synthetic constructor <init>(Lx6/h;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx6/g;->a:Lx6/h;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lx6/g;->a:Lx6/h;

    check-cast p1, Lx6/a0;

    invoke-static {v0, p1}, Lx6/h;->b(Lx6/h;Lx6/a0;)[B

    move-result-object p1

    return-object p1
.end method
