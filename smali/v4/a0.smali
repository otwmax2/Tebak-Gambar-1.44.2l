###### Class v4.a0 (v4.a0)
.class public final Lv4/a0;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lv4/c0;
.implements Lv4/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lv4/c0;",
        "Lv4/y;"
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/Object;


# instance fields
.field private volatile a:Lv4/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/c0<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lv4/a0;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lv4/c0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv4/c0<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lv4/a0;->c:Ljava/lang/Object;

    iput-object v0, p0, Lv4/a0;->b:Ljava/lang/Object;

    iput-object p1, p0, Lv4/a0;->a:Lv4/c0;

    return-void
.end method

.method public static a(Lv4/c0;)Lv4/y;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lv4/c0<",
            "TT;>;T:",
            "Ljava/lang/Object;",
            ">(TP;)",
            "Lv4/y<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lv4/y;

    if-eqz v0, :cond_7

    .line 2
    check-cast p0, Lv4/y;

    return-object p0

    :cond_7
    new-instance v0, Lv4/a0;

    .line 3
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-direct {v0, p0}, Lv4/a0;-><init>(Lv4/c0;)V

    return-object v0
.end method

.method public static b(Lv4/c0;)Lv4/c0;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lv4/c0<",
            "TT;>;T:",
            "Ljava/lang/Object;",
            ">(TP;)",
            "Lv4/c0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Lv4/a0;

    if-eqz v0, :cond_8

    return-object p0

    .line 3
    :cond_8
    new-instance v0, Lv4/a0;

    .line 4
    invoke-direct {v0, p0}, Lv4/a0;-><init>(Lv4/c0;)V

    return-object v0
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv4/a0;->b:Ljava/lang/Object;

    sget-object v1, Lv4/a0;->c:Ljava/lang/Object;

    if-ne v0, v1, :cond_59

    monitor-enter p0

    :try_start_7
    iget-object v0, p0, Lv4/a0;->b:Ljava/lang/Object;

    if-ne v0, v1, :cond_54

    iget-object v0, p0, Lv4/a0;->a:Lv4/c0;

    invoke-interface {v0}, Lv4/c0;->zza()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lv4/a0;->b:Ljava/lang/Object;

    if-eq v2, v1, :cond_4f

    if-ne v2, v0, :cond_18

    goto :goto_4f

    :cond_18
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 2
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x76

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Scoped provider was invoked recursively returning different results: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " & "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". This is likely due to a circular dependency."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4f
    :goto_4f
    iput-object v0, p0, Lv4/a0;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lv4/a0;->a:Lv4/c0;

    .line 3
    :cond_54
    monitor-exit p0

    goto :goto_59

    :catchall_56
    move-exception v0

    monitor-exit p0
    :try_end_58
    .catchall {:try_start_7 .. :try_end_58} :catchall_56

    throw v0

    :cond_59
    :goto_59
    return-object v0
.end method
