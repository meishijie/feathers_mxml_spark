/**
 * Created by ashovkoplias on 14.07.2015.
 */
package feathers.spark
{
    import feathers.controls.AutoComplete;

    [DefaultProperty("source")]

    public class AutoComplete extends feathers.controls.AutoComplete
    {
        private var _sparkLayoutData:SparkLayoutData;

        public function AutoComplete()
        {
            super();
        }

        [PercentProxy("percentWidth")]
        [Bindable(event="change")]
        override public function set width(value:Number):void
        {
            super.width = value;
        }

        override public function get width():Number
        {
            return super.width;
        }

        [PercentProxy("percentWidth")]
        [Bindable(event="change")]
        override public function get height():Number
        {
            return super.height;
        }

        override public function set height(value:Number):void
        {
            super.height = value;
        }

        public function get percentWidth():Number
        {
            return sparkLayoutData.percentWidth;
        }

        public function set percentWidth(value:Number):void
        {
            sparkLayoutData.percentWidth = value;
        }

        public function get percentHeight():Number
        {
            return sparkLayoutData.percentHeight;
        }

        public function set percentHeight(value:Number):void
        {
            sparkLayoutData.percentHeight = value;
        }

        public function get top():Number
        {
            return sparkLayoutData.top;
        }

        public function set top(value:Number):void
        {
            sparkLayoutData.top = value;
        }

        public function get right():Number
        {
            return sparkLayoutData.right;
        }

        public function set right(value:Number):void
        {
            sparkLayoutData.right = value;
        }

        public function get bottom():Number
        {
            return sparkLayoutData.bottom;
        }

        public function set bottom(value:Number):void
        {
            sparkLayoutData.bottom = value;
        }

        public function get left():Number
        {
            return sparkLayoutData.left;
        }

        public function set left(value:Number):void
        {
            sparkLayoutData.left = value;
        }

        public function get horizontalCenter():Number
        {
            return sparkLayoutData.horizontalCenter;
        }

        public function set horizontalCenter(value:Number):void
        {
            sparkLayoutData.horizontalCenter = value;
        }

        public function get verticalCenter():Number
        {
            return sparkLayoutData.verticalCenter;
        }

        public function set verticalCenter(value:Number):void
        {
            sparkLayoutData.verticalCenter = value;
        }

        private function get sparkLayoutData():SparkLayoutData
        {
            if (_sparkLayoutData == null)
            {
                _sparkLayoutData = new SparkLayoutData(this);
            }
            return _sparkLayoutData;
        }
    }
}
