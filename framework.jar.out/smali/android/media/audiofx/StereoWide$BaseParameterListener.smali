.class Landroid/media/audiofx/StereoWide$BaseParameterListener;
.super Ljava/lang/Object;
.source "StereoWide.java"

# interfaces
.implements Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/StereoWide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseParameterListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/audiofx/StereoWide;


# direct methods
.method private constructor <init>(Landroid/media/audiofx/StereoWide;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/audiofx/StereoWide;

    .prologue
    .line 162
    iput-object p1, p0, Landroid/media/audiofx/StereoWide$BaseParameterListener;->this$0:Landroid/media/audiofx/StereoWide;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/audiofx/StereoWide;Landroid/media/audiofx/StereoWide$BaseParameterListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/audiofx/StereoWide;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/audiofx/StereoWide$BaseParameterListener;-><init>(Landroid/media/audiofx/StereoWide;)V

    return-void
.end method


# virtual methods
.method public onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V
    .locals 7
    .param p1, "effect"    # Landroid/media/audiofx/AudioEffect;
    .param p2, "status"    # I
    .param p3, "param"    # [B
    .param p4, "value"    # [B

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 166
    const/4 v0, 0x0

    .line 168
    .local v0, "l":Landroid/media/audiofx/StereoWide$OnParameterChangeListener;
    iget-object v3, p0, Landroid/media/audiofx/StereoWide$BaseParameterListener;->this$0:Landroid/media/audiofx/StereoWide;

    invoke-static {v3}, Landroid/media/audiofx/StereoWide;->-get1(Landroid/media/audiofx/StereoWide;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 169
    :try_start_0
    iget-object v3, p0, Landroid/media/audiofx/StereoWide$BaseParameterListener;->this$0:Landroid/media/audiofx/StereoWide;

    invoke-static {v3}, Landroid/media/audiofx/StereoWide;->-get0(Landroid/media/audiofx/StereoWide;)Landroid/media/audiofx/StereoWide$OnParameterChangeListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 170
    iget-object v3, p0, Landroid/media/audiofx/StereoWide$BaseParameterListener;->this$0:Landroid/media/audiofx/StereoWide;

    invoke-static {v3}, Landroid/media/audiofx/StereoWide;->-get0(Landroid/media/audiofx/StereoWide;)Landroid/media/audiofx/StereoWide$OnParameterChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .end local v0    # "l":Landroid/media/audiofx/StereoWide$OnParameterChangeListener;
    :cond_0
    monitor-exit v4

    .line 173
    if-eqz v0, :cond_3

    .line 174
    const/4 v1, -0x1

    .line 175
    .local v1, "p":I
    const/4 v2, -0x1

    .line 177
    .local v2, "v":S
    array-length v3, p3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 178
    invoke-static {p3, v6}, Landroid/media/audiofx/StereoWide;->byteArrayToInt([BI)I

    move-result v1

    .line 180
    :cond_1
    array-length v3, p4

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 181
    invoke-static {p4, v6}, Landroid/media/audiofx/StereoWide;->byteArrayToShort([BI)S

    move-result v2

    .line 183
    .end local v2    # "v":S
    :cond_2
    if-eq v1, v5, :cond_3

    if-eq v2, v5, :cond_3

    .line 184
    iget-object v3, p0, Landroid/media/audiofx/StereoWide$BaseParameterListener;->this$0:Landroid/media/audiofx/StereoWide;

    invoke-interface {v0, v3, p2, v1, v2}, Landroid/media/audiofx/StereoWide$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/StereoWide;IIS)V

    .line 165
    .end local v1    # "p":I
    :cond_3
    return-void

    .line 168
    .restart local v0    # "l":Landroid/media/audiofx/StereoWide$OnParameterChangeListener;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
